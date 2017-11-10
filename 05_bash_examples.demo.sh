. ./demo-magic/demo-magic.sh
DEMO_PROMPT="[05 \W]$ "
cd data-shell || echo -n ''
p 'sleep 30'
sleep 30
child=$! 

pe 'sleep 50'
pe 'bg'
pe 'fg'
pe 'sleep 120 &'
pe 'fg 1'
pe 'ps '
pe 'ps -u'
pe 'ps -uf'
pe 'ps -a'
pe 'ps -af'
pe 'sleep 600 &'
pe 'pid=$!'
pe 'echo "Sleep process pid = $pid"'
pe 'ps '
pe 'kill $!'
pe 'ps'
