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
done
