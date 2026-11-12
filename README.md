# UNI Beamer Template

An unofficial LaTeX Beamer template for course slides at the **University of Northern Iowa**,
styled with UNI's official Panther Purple and Goldenrod.

![Preview](docs/preview.png)

## Features

- **UNI brand colors**: Panther Purple `#500778` and Goldenrod `#FFB500`, from the
  [UNI brand guide](https://ur.uni.edu/uni-brand/visual-identity/colors)
- **Clean layout**: left-aligned title page, purple frame-title bar with a gold rule, and a footer
  with author, short title and "page / total"
- **Section navigation that scales**: a clickable section bar for short decks, switching
  automatically to a breadcrumb (`3 / 12 • Section » Subsection`) for long ones
- **Compact frame titles** for content-heavy slides, per slide or for a whole deck
- **Roadmap slides** at each new section (two columns for long decks), which can be turned off
- **Readable on projectors**: Fira Sans by default, with one-word switches to TeX Gyre Heros
  (Helvetica clone), DejaVu Sans or Latin Modern Sans
- **Emoji and icons** through `emoji` and `fontawesome5`
- **Restyled blocks** (`block`, `alertblock`, `exampleblock`) and a purple closing slide
- **biblatex author-year citations** with biber
- Works at **16:9 and 4:3**, locally and on Overleaf

## Quick start

### Local (TeX Live or MiKTeX)

```bash
latexmk WK1-Mon-Intro.tex
```

The bundled `latexmkrc` selects **LuaLaTeX** and **biber** automatically.
LuaLaTeX is required because the template uses `fontspec` and `emoji`.

### Overleaf

1. Upload the repository (or *New Project → Import from GitHub*).
2. *Menu → Settings → Compiler*: choose **LuaLaTeX**.
3. Set `WK1-Mon-Intro.tex` as the main document.

### GitHub Actions

Every push to `main` builds the slides; download the PDFs from the run's **Artifacts**.

## Project structure

```
WK1-Mon-Intro.tex              lecture main file (one per lecture)
latexmkrc                      LuaLaTeX + biber build settings
includes/
├── tex/
│   ├── packages-import.tex    packages, body font, emoji font, biblatex
│   ├── colors-definition.tex  UNI palette and all Beamer colors
│   ├── footline-definition.tex  layout: headline, frame title, footline,
│   │                          title page, roadmap slides, blocks, closing frame
│   ├── presentation-info.tex  presenter, course and lecture schedule
│   ├── doc-metadata.tex       PDF metadata
│   └── logo.tex               title-page logo
├── slides/WK1/WKONE_Mon.tex   slide content for a lecture
├── bibliography/ref.bib       references
├── pics/                      images (UNI logos not included; see pics/README.md)
└── fonts/                     optional fonts (see fonts/README.md)
```

## Customizing

| What | Where | How |
|---|---|---|
| Name, email, office, course, semester | `presentation-info.tex` | Edit the `\newcommand`s |
| Lecture title and date | `presentation-info.tex` + main file | Add a `\presentationtitle...` / `\presentationtime...` pair |
| Aspect ratio | main file | `aspectratio=169` or `aspectratio=43` |
| Body font | `packages-import.tex` | `\newcommand{\unibodyfont}{fira}`: `fira`, `heros`, `dejavu`, `lmsans` |
| Headline style | `footline-definition.tex` | `\newcommand{\uniheadlinestyle}{auto}`: `auto`, `nav`, `breadcrumb`, `none` |
| Max sections for the full nav bar | `footline-definition.tex` | `\newcommand{\uninavmaxsections}{7}` |
| Frame-title size | slide or preamble | `\begin{frame}[compact]{...}` for one slide; `\unicompacttitles` for a whole deck |
| Roadmap slides | `footline-definition.tex` or main file | `\uniroadmapfalse` to turn off, `\uniroadmaptrue` to turn on |
| Colors and blocks | `colors-definition.tex` | `\setbeamercolor{...}` lines |
| Logo | `logo.tex` + `includes/pics/` | See `includes/pics/README.md` |

**Short section names** for the navigation bar: `\section[Short]{A Much Longer Section Title}`.

**Closing slide**: `\uniclosingframe{Questions?}` or `\uniclosingframe[\emoji{waving-hand}]{Thank you!}`.

### Adding a new lecture

1. Copy `WK1-Mon-Intro.tex`, e.g. to `WK2-Mon-Topic.tex`.
2. Add the lecture's title and date to `presentation-info.tex`
   (e.g., `\presentationtitleWKTwoMon`, `\presentationtimeWKTwoMon`) and use them in `\title` and `\date`.
3. Create `includes/slides/WK2/WKTWO_Mon.tex` and `\input` it in the new main file.

## Requirements

A recent TeX Live or MiKTeX with LuaLaTeX, biber, and the packages `beamer`, `fontspec`,
`emoji`, `fontawesome5`, `biblatex`, `tikz`, `booktabs`, `soul`, `ulem`, `censor`, `setspace`,
`caption` and `fira`. A full TeX Live install has all of them; MiKTeX installs missing ones on demand.

## Disclaimer

This is a personal, unofficial template, not affiliated with or endorsed by the
University of Northern Iowa. UNI names, logos and marks belong to the University of Northern Iowa
and are not distributed here.

## License

[GNU GPL v3.0](LICENSE) © 2022–2026 [Yihong Liu](https://liu-yihong.github.io/)
