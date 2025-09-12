### If the shared folder is not automatically mounted, you can manually mount it using the vmhgfs-fuse command.
Command to mount:
sudo vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other
