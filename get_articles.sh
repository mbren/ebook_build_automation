#!/bin/bash

# Download the specified articles using the Heroku Dev Center API
for i in $( cat article_list.txt ); do
   devcenter pull $i
done

# Process the downloaded files to remove the id and markdown_flavor tags and also change the title marker to the markdown H1 marker.
for f in $( cat article_list.txt )
do
   #current filename
   curfile="${f##*/}.md"
   sed '/^title:/ s/title:/#/' $curfile > $curfile.tmp
   mv $curfile.tmp $curfile
   sed '/^id:/d' $curfile > $curfile.tmp
   mv $curfile.tmp $curfile
   sed '/^markdown_flavour/d' $curfile > $curfile.tmp
   mv $curfile.tmp $curfile
done
