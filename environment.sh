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

wget -P ~/ https://github.com/sgerrand/docker-glibc-builder/releases/download/2.33-0/glibc-bin-2.33-0-x86_64.tar.gz
cd ~/
gzip -d glibc-bin-2.33-0-x86_64.tar.gz
tar -xvf glibc-bin-2.33-0-x86_64.tar
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/glibc-bin-2.33-0-x86_64/usr/glibc-compat\lib
git clone --depth 1 https://github.com/kutemeikito/RastaMod69-Clang ~/tc
~/tc/bin/clang -v
sudo dd if=/dev/zero of=/swapfile bs=1M count=40960
sudo mkswap /swapfile
sudo swapon /swapfile
cd /home/circleci/project
