#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.1.tar.gz ]; then
    if pgrep -x "nanominer" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.1
tmux new-session -d -s my_session1  './nanominer'
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.5.1/nanominer-linux-1.5.1.tar.gz
tar xvzf nanominer-linux-1.5.1.tar.gz
cd nanominer-linux-1.5.1
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/txt/master/config.ini
chmod +x nanominer
tmux new-session -d -s my_session1  './nanominer'
