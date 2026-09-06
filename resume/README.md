# English and Chinese resumes

Run builds from the repository root:

```bash
make en     # build/resume-en.pdf
make zh     # build/resume-zh.pdf
make all    # both PDFs; running make alone does the same
```

The build uses XeLaTeX. A full TeX Live/MacTeX installation provides the LaTeX
packages, including `fontawesome6`, `xeCJK`, and the Fandol Chinese fonts.
The shared template loads the Source Sans 3 and Roboto font files supplied by
TeX Live, without requiring a separate system font installation.

## Where to edit

| File | Purpose |
| --- | --- |
| `en.tex` | English name, job title, address, PDF metadata, and section order. |
| `zh.tex` | Chinese name, job title, address, PDF metadata, and section order. |
| `en/*.tex` | English section content. |
| `zh/*.tex` | Independent Chinese section content. |
| `zh/typography.tex` | Chinese fonts, date format, and heading appearance. |
| `../shared/contact.tex` | Email, phone, social links, and optional photo for both languages. |
| `../shared/layout.tex` | Shared margins, accent color, and header/footer formatting. |
| `../assets/` | Shared images, including the optional `photo.jpg`. |

These are copies of the Awesome CV examples, including the original author's
sample personal information and achievements. Replace them before using either
resume. Chinese headings and typography are configured; the copied section body
text is still English and should be replaced or translated independently.

Summary, experience, skills, honors, certificates, and education are enabled by
default. Presentation, writing, committees, and extracurricular sections are
included as optional templates. Uncomment their `\input` lines in the main
document to enable them, and reorder the lines to change the section order.

Every input path is relative to the repository root, for example
`\input{resume/en/experience.tex}`. Compile a main document through `make`;
section files cannot be compiled on their own.

Shared changes rebuild both PDFs; language-specific changes rebuild that
language. Each language has its own output name, including auxiliary files.
Generated files stay in the ignored `build/` directory.

The original templates remain under `../examples/` for reference. The resume
builds do not import content from that directory.
