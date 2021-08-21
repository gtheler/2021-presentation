hash=$(git rev-parse --short HEAD)
headepoch=$(git log -1 --format="%ct")
date="${hash}---$(LC_ALL=${DATELC} date -d@${headepoch} +%Y-%m-%d)"
if [ ! -z "$(git status --porcelain)" ]; then
  date="${date}+"
fi

cat << EOF > hash.yaml
---
date: ${date}
...
EOF


# pandoc -s -f markdown+smart -t beamer+smart hash.yaml README.md -o README.tex \
#   --lua-filter=include-code-files.lua \
#   --lua-filter=code-style.lua \
#   --listings \
#   --pdf-engine=xelatex \
#   --template=template.tex
  

pandoc -s -f markdown+smart -t beamer+smart hash.yaml README.md -o README.pdf \
  --lua-filter=include-code-files.lua \
  --lua-filter=code-style.lua \
  --listings \
  --pdf-engine=xelatex \
  --template=template.tex
  
# pandoc -s -f markdown+smart -t beamer+smart README.md -M handout=true --listings  --pdf-engine=xelatex -o README-handout.pdf


# convert -density 305 README.pdf  pepe.png
