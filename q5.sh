#!/bin/bash
cat ./to_replace.txt | tr " " "\n" | xargs -n 1 -d "\n" -I{} mv {}.txt {}{}.txt
