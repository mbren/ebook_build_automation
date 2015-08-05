#!/bin/bash

for f in $( cat article_list.txt )
do
    #input is a full url but we just want the slug with .md added to it
    filelist="$filelist${f##*/}.md "
done

pandoc -S --epub-stylesheet epub.css -f markdown_github -t epub -o ./Heroku_Postgres.epub $filelist 

