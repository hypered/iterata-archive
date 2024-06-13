#! /usr/bin/env bash

# Use Motherboard to download multiple versions of the same text, convert them
# to Markdown, and commit them to this Git repository.
# (Motherboard is the application behind Lex Iterata.)

set -e

mkdir -p texts/1999/01/

# The versions at
# https://www.ejustice.just.fgov.be/cgi_loi/article.pl?language=fr&arch=084&numac_search=1999011160
for i in {1..84}
do
  motherboard parse-document --from-justel \
    --law 1999 04 29 1999011160 $i \
    --md \
    > texts/1999/01/1999011160.md

  git add texts/1999/01/1999011160.md

  git commit -m "Add version $i."
done

# The version at
# https://www.ejustice.just.fgov.be/eli/loi/1999/04/29/1999011160/justel
# There are differences, but it is not clear for me if it's really a different
# version or if it's a different way to render it.

motherboard parse-document --from-justel \
  --law 1999 04 29 1999011160 \
  --md \
  > texts/1999/01/1999011160.md

git add texts/1999/01/1999011160.md

git commit -m "Add non-archived version."
