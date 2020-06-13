# output to 5 most commited files
# e.g
## 7 filename
## 5 filename
## ....
git log --format=format: --name-only | egrep -v '^$' | sort | uniq -c | sort -r

## only top five
git log --format=format: --name-only | egrep -v '^$' | sort | uniq -c | sort -r | head -5

## output to file
git log --format=format: --name-only | egrep -v '^$' | sort | uniq -c | sort -r > all_frequesncies.txt

# targeting sub directory after 2016-01-01
git log --format=format: --name-only --after=2016-01-01 -- FOLDER_PATH | sort | uniq -c | sort -r | head -5