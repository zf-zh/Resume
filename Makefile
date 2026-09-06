.DEFAULT_GOAL := all
.PHONY: all en zh
.DELETE_ON_ERROR:

LATEX ?= xelatex
LATEX_FLAGS ?= -interaction=nonstopmode -halt-on-error -file-line-error
BUILD_DIR := build
COMMON_SRCS := awesome-cv.cls $(wildcard shared/*.tex assets/*) Makefile

all: en zh

en: $(BUILD_DIR)/resume-en.pdf

zh: $(BUILD_DIR)/resume-zh.pdf

$(BUILD_DIR)/resume-en.pdf: resume/en.tex $(wildcard resume/en/*.tex) $(COMMON_SRCS) | $(BUILD_DIR)
	$(LATEX) $(LATEX_FLAGS) -output-directory="$(BUILD_DIR)" -jobname=resume-en "$<"

$(BUILD_DIR)/resume-zh.pdf: resume/zh.tex $(wildcard resume/zh/*.tex) $(COMMON_SRCS) | $(BUILD_DIR)
	$(LATEX) $(LATEX_FLAGS) -output-directory="$(BUILD_DIR)" -jobname=resume-zh "$<"

$(BUILD_DIR):
	mkdir -p "$@"
