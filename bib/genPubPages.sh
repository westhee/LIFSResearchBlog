#!/bin/bash

# Generate seperate publications pages from a bibtex file
# 2019-08-10

# Since we are already using bibble, we can just seperate
# the bibtex into a single publication, and generate the
# page with the publication title.

OUTPATH="../pubs/html"
BIBFILE="pubs.bib"
TEMPLATE="singlePage.tmpl"

TDIR="$(mktemp -d)"
# Split the bibs into single files
awk -v RS= '{print > ("TEMPARTICLE-" NR ".bib")}' ${BIBFILE}

for ARTICLE in $(ls | grep "TEMPARTICLE"); do
    echo $ARTICLE
    TITLE=$(cat $ARTICLE | grep "title" | sed 's/title = {{//g' | sed 's/}},//g')
    TITLEUS=$(echo $TITLE | sed 's/ /_/g')
    YEAR=$(cat $ARTICLE | grep "year" | sed 's/year = {//g' | sed 's/},//g')

    # Create holder page with title name
    echo "---" > ${OUTPATH}/${YEAR}-${TITLEUS}.html
    echo "layout: default" >> ${OUTPATH}/${YEAR}-${TITLEUS}.html
    echo "title: ${TITLE}" >> ${OUTPATH}/${YEAR}-${TITLEUS}.html
    echo "permalink: /publications/${YEAR}-${TITLEUS}" >> ${OUTPATH}/${YEAR}-${TITLEUS}.html
    echo "---" >> ${OUTPATH}/${YEAR}-${TITLEUS}.html
    bibble $ARTICLE $TEMPLATE  >> ${OUTPATH}/${YEAR}-${TITLEUS}.html
done

rm TEMPARTICLE-*