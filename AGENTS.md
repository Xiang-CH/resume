# AGENTS.md

Chen Xiang's resume, maintained as LaTeX source. PDFs and markdown are generated from it.

## Source of truth

- `main.tex` is the English resume.
- `main_zh.tex` is the Chinese resume.

Edit these two files. Everything else with resume content is generated.

## Build

- `build.sh` compiles 4 PDFs with xelatex (English and Chinese, each with and without a phone number) and then runs `generate_markdown.sh`. Phone numbers come from `.env` (`PHONE_NUMBER_ONE`, `PHONE_NUMBER_TWO`) through `\def` overrides.
- `generate_markdown.sh` converts both `.tex` files to markdown with pandoc, a `sed` cleanup, and the `flatten-tables.lua` filter.

Do not hand-edit the generated files:
- `resume_chen_xiang.md`, `陈想-简历.md`
- the four `*.pdf` files

## CI

On push to `main`, `.github/workflows/main.yml` unites the two no-phone PDFs into `deploy/resume_chen_xiang.pdf`, renders a preview PNG, regenerates the markdown, and uploads everything to Cloudflare R2. Keep the committed generated files in sync with the `.tex` sources.
