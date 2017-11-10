#!/bin/bash -i

# HISTFILE=~/.bash_history
# set -o history

HISTTIMEFORMAT="%d-%m-%y %T "

. /home/502/aph502/code/bash/demo-magic/demo-magic.sh

DEMO_PROMPT="[06 \W]$ "

cd data-shell >& /dev/null
rm -rf /tmp/$USER

clear

pe 'head data/morse.txt'
pe 'cut -s -f 2 data/morse.txt | head'
pe 'head data/planets.txt '
pe 'cut -d, -f1,4 data/planets.txt | head'
pe 'history | head'
pe 'history | grep -v ls | grep -v module | cut -c26- > commands.txt'
pe 'head commands.txt'
pe 'seq 1 $(cat data/planets.txt | wc -l) | paste -d, - data/planets.txt'
pe 'short_files_report -G $PROJECT | sed -n "1,4p; /$USER/p"'
pe "for i in {00001..10000}; do echo 'this is a string' > tmp/file_\${i}; done"
pe "cat tmp/file_00001 tmp/file_10000"
pe 'time sed -i "s/string/rope/" tmp/*'
pe "cat tmp/file_00001 tmp/file_10000"
pe 'grep string tmp/*'
pe 'ls -ld tmp'
pe 'rm tmp/*'
pe 'ls -ld tmp'
pe 'tree writing'
pe 'tree -d'
pe 'touch tmp/file_{A..E}_{0001..10}'
pe 'ls tmp'
pe 'find tmp -name "*_a_*"'
pe 'find tmp -iname "*_a_*"'
pe 'find tmp -iname "*_a_*" -ls'
pe 'find tmp -size 0 -delete'
pe 'ls tmp'
pe 'find . -size +10k      '
pe 'find . -size +10k -type f'
pe 'find . -size -10k -type f'
pe 'find . -size -100k -type f -exec grep -qi nine {} \; -ls'
pe 'find . -size +10k -type f -exec du -shc {} +'
pe 'time find . -iname "*.pdb" -exec grep -qi " cl " {} \; -print  '
pe 'time grep -r  -i " cl "'
pe 'find . -group hh5 | wc -l'
pe 'find . -perm /o=x'
pe 'find . -perm /o=x -group hh5'
pe 'find . -perm /o=x -or -group hh5'
pe 'find . -mtime -2'
pe 'find -mtime +2'
pe 'find -not -mtime -2'
pe 'mkdir -p /tmp/$USER'
pe 'rsync -av data /tmp/$USER'
pe 'rsync -av data /tmp/$USER'
pe 'touch data/*'
pe 'rsync -av data /tmp/$USER'
pe 'rsync -n -av data/ /tmp/$USER'
pe 'rm -rf /tmp/$USER/data'
pe 'rsync --exclude "*.pdb" -av data /tmp/$USER'
pe 'rsync -n -av data /tmp/$USER'
p 'rsync --exclude "*.pdb" -av data user@host:/path/to/directory'
