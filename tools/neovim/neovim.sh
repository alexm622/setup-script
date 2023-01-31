
cd tmp
mkdir neovim
cd neovim

wget https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz

gh release download -R equalsraf/neovim-qt  -A tar.gz

tar -xvf *.tar.gz

#install neovim

cd nvim-stable

mkdir build

cd build

cmake ..

LROCK=luarocks51 install

$LROCK mpack
$LROCK lpeg

gmake -j8 CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/usr/local/bin/nvim install

#install nvim-qt

cd /tmp/neovim

NVIM_QT=$(ls -ald */ | awk '{print $9}' | grep neovim-qt)

cd $NVIM_QT

mkdir build

cd build


cmake -DCMAKE_BUILD_TYPE=Release ..

cmake --build . -j8

make -j4

cd bin

cp nvim-qt /usr/local/bin/



