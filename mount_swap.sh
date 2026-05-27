#!/bin/bash
LOG=/Library/Logs/mountvm.log

echo $(date) > $LOG

VM_VOLUME=$(/usr/sbin/diskutil list | /usr/bin/grep "VM" | awk '{ print $7 }')
echo "VM Volume is $VM_VOLUME" >> $LOG

echo "Starting mount loop" >> $LOG

for retry in {1..5}
do
  #if [ ! -e /private/var/vm/sleepimage ]
  mount | /usr/bin/grep /private/var/vm >> /dev/null
  if [ ! $? -eq 0 ]
  then
    echo "Mount not found, attempting mount" >> $LOG
    /sbin/mount_apfs ${VM_VOLUME} /private/var/vm >> $LOG
    /usr/sbin/diskutil mount -mountPoint /private/var/vm ${VM_VOLUME} >> $LOG
    break
  else
    if [ $retry -lt 6 ]
    then
      for count in {2..1}
      do
        echo -n "$count min..."
	sleep 60
      done
      echo
    fi
  fi
done

exit 0
