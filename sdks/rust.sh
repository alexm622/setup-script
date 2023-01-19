#!/bin/sh


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup.sh

sh /tmp/rustup.sh -y

rustup component add rust-analyzer
