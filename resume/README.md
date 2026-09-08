# English and Chinese resumes

Run builds from the repository root:

```bash
make en     # build/resume-en.pdf
make zh     # build/resume-zh.pdf
make all    # both PDFs; running make alone does the same
```

The build uses XeLaTeX. A full TeX Live/MacTeX installation provides the LaTeX
packages, including `fontawesome6` and `xeCJK`. The Chinese resume requires
the macOS fonts PingFang SC (regular, light, and semibold) and Kaiti SC.
The shared template uses Source Sans 3 for English text throughout, including
the name and contact details. It loads the font files supplied by TeX Live,
without requiring a separate system font installation for English text.

## Where to edit

| File | Purpose |
| --- | --- |
| `en.tex` | English name, job title, address, PDF metadata, and section order. |
| `zh.tex` | Chinese name, job title, address, PDF metadata, and section order. |
| `en/*.tex` | English section content. |
| `zh/*.tex` | Independent Chinese section content. |
| `en/projects.tex`, `zh/projects.tex` | Project name, role, context, dates, contributions, technologies, and results. |
| `zh/typography.tex` | Chinese fonts, date format, and heading appearance. |
| `../shared/contact.tex` | Email, phone, social links, and optional photo for both languages. |
| `../shared/layout.tex` | Shared margins, accent color, and header/footer formatting. |
| `../assets/` | Shared images, including the optional `photo.jpg`. |

These are copies of the Awesome CV examples, including the original author's
sample personal information and achievements. Replace them before using either
resume. Chinese headings and typography are configured; the copied section body
text is still English and should be replaced or translated independently.

Summary, experience, projects, skills, honors, certificates, and education are enabled by
default. Presentation, writing, committees, and extracurricular sections are
included as optional templates. Uncomment their `\input` lines in the main
document to enable them, and reorder the lines to change the section order.

Projects / 项目经历 appears immediately after work experience in both versions.
The project files contain placeholders, not sample claims. Replace the fields
and bullet prompts with your own information; duplicate the complete `\cventry`
block for each additional project. A repository or demo link can be added with
`\href{URL}{Project name}` in the project-name field.

Every input path is relative to the repository root, for example
`\input{resume/en/experience.tex}`. Compile a main document through `make`;
section files cannot be compiled on their own.

Shared changes rebuild both PDFs; language-specific changes rebuild that
language. Each language has its own output name, including auxiliary files.
Generated files stay in the ignored `build/` directory.

The original templates remain under `../examples/` for reference. The resume
builds do not import content from that directory.
