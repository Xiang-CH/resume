#!/bin/bash
set -e

pandoc -f latex -t gfm --wrap=none --lua-filter flatten-tables.lua main.tex -o resume_chen_xiang.md
sed -e 's/\\fontseries{[^}]*}\\fontsize{[^}]*}{[^}]*}\\selectfont//g' \
    -e 's/\\fontsize{[^}]*}{[^}]*}\\selectfont//g' \
    -e 's/\\vspace{[^}]*}//g' \
    -e 's/\\hspace{[^}]*}/ /g' \
    main_zh.tex | pandoc -f latex -t gfm --wrap=none --lua-filter flatten-tables.lua -o 陈想-简历.md

for f in resume_chen_xiang.md 陈想-简历.md; do
  perl -pi -e 's/\$`\|\`\$/|/g' "$f"
  perl -pi -e 's/^<\/?div[^>]*>.*$//g' "$f"
  perl -pi -e '
    s/^# /## /;
    if (!$seen && /^[ \t]*\*\*/) {
      $seen = 1;
      s/<[^>]*>//g;
      s/\*\*//g;
      s/[ \t]+/ /g;
      s/^/# /;
      s/ $//;
    }
  ' "$f"
  perl -0777 -pi -e '
    s/\A\n+//;                       # no blank lines at the top
    s/\n+\z/\n/;                     # exactly one newline at the end
    s/\n{3,}/\n\n/g;                 # collapse blank-line runs to one
    s/^([ \t]*-)  /$1 /mg;           # one space after a bullet marker
    s/^([ \t]*-[^\n]*\n)\n(?=[ \t]*-)/$1/mg;   # no blank lines between bullet items
    s/^([ \t]{2,}[^\n]*\n)\n(?=[ \t]*-)/$1/mg; # no blank lines before nested bullets
  ' "$f"
done
