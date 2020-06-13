# show commit by author
# e.g
## 8 D.Cooper
## 7 Bob
## ...
git shortlog -s

# number of authors
## word count (wc) with new lines options (-l)
git shortlog -s | wc -l

# targeting sub directory after 2016-01-01
git shortlog -s --after=2016-01-01 -- FOLDER_PATH