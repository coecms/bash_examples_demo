. ./demo-magic/demo-magic.sh
DEMO_PROMPT="[04 \W]$ "
clear
cd data-shell &> /dev/null
pe 'v="hello"'
pe 'echo "${v} there"'
p  "echo '\${v} there'"
echo  '${v} there'
pe 'echo "\${v} there"'
pe 'echo ${#v}'
pe 'echo ${v:0:3}'
pe 'echo ${v:2:${#v}-3}'
pe 'v="temp_salt_jun.grb.txt"'
pe 'echo ${v%.txt}'
pe 'echo ${v/.txt/}'
pe 'echo ${v/.grb.txt/.nc}'
p "# New slide"
pe 'ls -l $(which ls)'
pe 'echo 1{a,b,c,d}'
pe 'echo 1{a..e}'
pe 'echo A{1..3}'
pe 'echo tmp_{a..e}{1..3}'
pe 'mkdir {00..10}'
pe 'ls -ld ??'
pe 'for d in {00..10}; do (cd $d; touch tempfile1) done'
pe 'ls -l ??'
pe 'touch {00..10}/tempfile2'
pe 'ls -l ??'
pe 'rm {00..10}/*'
pe 'rmdir {00..10}'
p 'alias ls="ls --color"'
p 'alias'
echo "alias ls='ls --color'"
p "echo \"alias ls='ls --color'\" >> ~/.bashrc"
pe 'which ls'
p 'type ls'
echo "ls is aliased to "'`ls --color'"'"
pe 'ls MM* *.* > log'
pe 'cat log'
pe 'ls MM* *.* &> log'
pe 'cat log'
pe 'ls MM* *.* 1> log.out 2> log.err '
pe 'cat log.out'
pe 'cat log.err'
pe "# New slide"
pe 'echo "echo Running myprog" > myprog'
pe 'myprog'
pe 'bash myprog'
pe 'source myprog'
pe '. myprog'
pe 'chmod a+x myprog'
pe 'myprog '
pe './myprog'
pe 'rm myprog'
pe 'echo "#!"$(which python) > myprog'
pe 'echo "print(\"This is python\")" >> myprog'
pe 'chmod a+x myprog'
pe './myprog'
pe 'cat myprog'
pe 'for i in $(seq 1 10); do echo $i; done'
pe 'for ((i=1;i<=10;i++)); do echo $i; done'
pe 'for i in {1..10}; do echo $i; done'
pe 'for i in {001..10}; do echo $i; done'
pe 'for i in {1..10}; do touch tmp/file_$i.txt; done'
pe 'ls -l tmp'
pe 'rm tmp/*'
pe 'for i in {001..10}; do touch tmp/file_$i.txt; done'
pe 'ls -l tmp'
pe 'for file in tmp/file_???.txt; do echo mv $file ${file/file/output}; done'
pe 'for file in tmp/file_???.txt; do mv $file ${file/file/output}; done'
pe 'wget https://goo.gl/11DSGh -O Shark_Bay.jpg'
pe 'for i in {1..10}; do cp Shark_Bay.jpg tmp/shark_bay_$i.jpg; done'
pe 'for file in tmp/shark_bay_*; do convert -scale 0.5 $file ${file/%.jpg/.png}; done'
pe 'sleep 5; ls'
pe 'sleep 5 && ls'
pe 'sleep 5 || ls'
pe 'mkdir /lala ; ls /lala'
pe 'mkdir /lala && ls /lala'
