apt get install -y nfs-kernel-server
mkdir /srv/nfs-volume
echo "/srv/nfs-volume *(rw,sync,no_subtree_check,no_root_squash)" | sudo tee /etc/exports