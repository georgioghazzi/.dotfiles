pacman -Qqe > ~/Backup/Packages.txt
rsync -av  /home/georgioghazzi/.config/ /home/georgioghazzi/Backup/ --exclude "discord" --exclude "Code\ -\ OSS/"
cd ~/Backup
git add *
git commit -m "Backup Date"
git push
