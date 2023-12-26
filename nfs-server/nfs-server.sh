# nfs-server
## nfs-server install
apt get install -y nfs-kernel-server
## nfs 공유 디렉터리 생성
mkdir /srv/nfs-volume
## nfs-server 설정
echo "/srv/nfs-volume *(rw,sync,no_subtree_check,no_root_squash)" | sudo tee /etc/exports

# nfs-client
## nfs-client install
apt install -y nfs-common

# nfs-provisioner
## nfs-provisioner manifest file(rbac, nfs-provisioner, storageclass)
curl https://raw.githubusercontent.com/Minki-An/YK-EFK/main/nfs-server/nfs-provision-all.yaml -o /root/nfs-provisioner.yaml
## nfs-provisioner deploy
kubectl apply -f /root/nfs-provisioner.yaml