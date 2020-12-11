mkdir emacs
cd emacs
git init
git remote add origin https://github.com/emacs-mirror/emacs.git
git fetch --depth 1 origin emacs-27
git reset --hard FETCH_HEAD
sudo apt install cmake libtool-bin autoconf make gcc texinfo libgtk-3-dev libxpm-dev libjpeg-dev libgif-dev libtiff5-dev libgnutls28-dev libncurses5-dev
./autogen.sh
./configure --with-modules
make
sudo make install
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
