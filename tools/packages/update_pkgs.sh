pacman -Qqe | grep -Fvx "$(pacman -Qqm)" > packages.txt
