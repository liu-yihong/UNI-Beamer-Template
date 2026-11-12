# latexmk configuration for the UNI Beamer template
# Build:  latexmk WK1-Mon-Intro.tex
# Clean:  latexmk -c

# Use the local time zone for \today ("Last updated" stamp)
$ENV{'TZ'} = 'America/Chicago';

# Compile with LuaLaTeX (required by fontspec + emoji)
$pdf_mode = 4;
$lualatex = 'lualatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# Use biber for biblatex; run it only when a .bib file exists
$bibtex_use = 1.5;

# Also remove these on `latexmk -c`
$clean_ext = 'nav snm vrb run.xml bbl synctex.gz';
