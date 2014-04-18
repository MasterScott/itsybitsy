#!/bin/bash


SITE_FILES="./site/"

mkdir -p ./tmp/
find $SITE_FILES -name "*.md~" | xargs rm

# Copy all Markdown files in site/ to tmp/
cd $SITE_FILES
cp -r * ../tmp/
cd ../

FILES=$(find ./tmp/ -name "*.md")

for f in $FILES
do
  echo "Processing $f file..."
  BASE=$(basename $(dirname $f))

  if [ $BASE = "tmp" ]; then
	BASE="default"
  fi

  perl Markdown.pl --html4tags $f > ${f%.*}.stage.html;
  cp ./templates/$BASE.html ${f%.*}.tmp.html
  sed -e "/\%body/r ${f%.*}.stage.html" -e "/$str/d" ${f%.*}.tmp.html > ${f%.*}.html
  rm ${f%.*}.stage.html ${f%.*}.tmp.html $f
done
