#!/bin/bash

file=$1
outfile=${file/%.txt/.demo.sh}

code=${file:0:2}

echo "Outfile: $outfile"

echo ". /home/502/aph502/code/bash/demo-magic/demo-magic.sh"

echo "DEMO_PROMPT=\"[$code \W]$ \""

echo "cd data-shell || echo -n ''"

# Delete comment lines and whitespace lines. Add pe and quote line. Escape single quotes
sed -e '/^#/d' -e '/^\s*$/d' -e '/^\s*set/d' -e "s/'/\\\'/g" -e "s/^/pe '/" -e "s/$/'/" $file
