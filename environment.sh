sudo apt-get update
sudo apt-get install -y --no-install-recommends \
        bc \
        bison \
        ca-certificates \
        cmake \
        curl \
        file \
        flex \
        gcc \
        g++ \
        git \
        libelf-dev \
        libssl-dev \
        linux-libc-dev \
        linux-libc-dev:i386 \
        lld \
        make \
        ninja-build \
        python3 \
        llvm \
        clang \
        texinfo \
	python2 \
        zip \
	gzip \
	tar \
        xz-utils \
        zlib1g-dev 

ulimit -c 40960
wget -P ~/ http://ftp.gnu.org/gnu/libc/glibc-2.33.tar.gz
cd ~/
gzip -d glibc-2.33.tar.gz
tar -xvf glibc-2.33.tar
cd ~/glibc-2.33
mkdir build
cd build
../configure  --prefix=/usr
make -j8
sudo make install
#export LD_PRELOAD=/home/glibc-bin-2.33-0-x86_64/usr/glibc-compat\lib\libc-2.33.so
#export LD_LIBRARY_PATH=/opt/glibc/lib/
#sudo rm -rf /lib/x86_64-linux-gnu/libc.so.6
#LD_PRELOAD=/opt/glibc/lib/libc-2.33.so  ln -s /opt/glibc/lib/libc-2.33.so /lib/x86_64-linux-gnu/libc.so.6
git clone --depth 1 https://github.com/kutemeikito/RastaMod69-Clang ~/tc
~/tc/bin/clang -v
sudo dd if=/dev/zero of=/swapfile bs=1M count=40960
sudo mkswap /swapfile
sudo swapon /swapfile
cd /home/circleci/project
