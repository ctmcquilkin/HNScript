#! /bin/sh
# Short script to grab all the links from HN and display them in the terminal

curl -s https://news.ycombinator.com/ | sed 's/<[^<>]*>//g' | sed '1,20d' | sed -e :a -e '$d;N;2,3ba' -e 'P;D'
