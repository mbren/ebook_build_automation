These scripts use the Heroku Dev Center CLI to download a set of files and then use Pandoc to build a book in EPUB format.

To use these scripts:

1. Install the CLI as described in the [Dev Center CLI](https://devcenter.heroku.com/articles/dev-center-cli) article.
1. Install [Pandoc](http://pandoc.org/).
1. Run `./get_articles.sh` to get all of the articles specified in the articles_list.txt file and do some preprocessing to remove metadata from the top of the files.
1. Run `/buildscript.sh`. 
1. Open the .epub file using your ebook reader software.
