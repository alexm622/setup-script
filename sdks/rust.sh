#!/usr/local/bin/sh


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup.sh

sh /tmp/rustup.sh -y

cd /tmp
mkdir rust-analyzer
cd rust-analyzer

git clone https://github.com/rust-lang/rust-analyzer.git
cd rust-analyzer

git checkout release

git clean -df

cargo xtask install --server
