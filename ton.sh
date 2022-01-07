cd /home/ubuntu
sudo apt-get install linux-headers-$(uname -r) -y
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-get update
sudo apt-get -y install cuda-drivers
sudo apt-get -y install libcurl3
sudo wget https://github.com/toncoinminer/tonminer/releases/download/1.0.11/tonminer-ubuntu-18.04-x86_64-v.1.0.11.tar.gz
tar xvzf tonminer-ubuntu-18.04-x86_64-v.1.0.11.tar.gz
cd tonminer-ubuntu-18.04-x86_64-v.1.0.11/
sudo apt update
sudo apt install ocl-icd-opencl-dev -y
./tonminer -api :5500  -w EQAsOF39e2PD-ICi0tF1dumOfcqAg0y7pTzGs3Uyw0lKICuA -p https://next.ton-pool.com &
