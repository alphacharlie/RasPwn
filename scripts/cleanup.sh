#!/bin/sh
for TMPFILE in $(find /var/log -type f -name "*1.gz")
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log -type f -name "*2.gz")
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log -type f -name "*3.gz")
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log -type f -name "*4.gz")
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log -type f -name "*5.gz")
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log/samba -type f)
do
  rm -fv $TMPFILE
done
for TMPFILE in $(find /var/log -type f)
do
  cp -vf /dev/null $TMPFILE;
done

rm -vf /root/.*history*
rm -vf /home/pi/.*history*
rm -rf /var/cache/apt/archives/*.deb
find / -type f -name "*-old" |xargs rm -rf
rm -rf /var/backups/*

#echo 'Cleaning Swap...'
#swapoff -a
#rm -vf /var/swap
#(pv -n /dev/zero | dd of=/var/swap bs=2M count=256) 2>&1 | dialog --gauge "Cleaning Swap..." 10 70 0
#echo 'Cleaning Free Space...'
#(pv -n /dev/zero | dd of=/tmp.file bs=2M) 2>&1 | dialog --gauge "Cleaning Free Space..." 10 70 0
#rm -vf /tmp.file
echo 'Done!';


