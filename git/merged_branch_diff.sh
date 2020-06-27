#!/bin/sh

# print all the branch which merged in $1 but not in $2

targets=() 
for target in $(git for-each-ref --shell --format='%(refname:strip=3)' --merged $1); do
    if [ ! "$target" == "''" ]; then
        targets=($target "${targets[@]}")
    fi
done

sources=() 
for source in $(git for-each-ref --shell --format='%(refname:strip=3)' --merged $2); do
    if [ ! "$source" == "''" ]; then
        sources=($source "${sources[@]}")
    fi
done

echo ${targets[@]} ${sources[@]} | tr ' ' '\n' | sort | uniq -u
