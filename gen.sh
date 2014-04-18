#!/bin/bash

FILES="./tmp/"
SITE_FILES="./site/"

mkdir -p $FILES
find $SITE_FILES -name "*.md~" | xargs rm

# Copy all Markdown files in site/ to tmp/
cd $SITE_FILES
cp -r * ../$FILES
cd ../


for f in $FILES*.md
do
  echo "Processing $f file..."
  perl Markdown.pl --html4tags $f > ${f%.*}.stage.html;
  cp ./templates/default.html ${f%.*}.tmp.html
  sed -e "/\%body/r ${f%.*}.stage.html" -e "/$str/d" ${f%.*}.tmp.html > ${f%.*}.html
done
