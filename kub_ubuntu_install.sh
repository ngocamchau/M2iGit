sudo apt update
sudo apt upgrade -y
sudo apt install -y git libvirt-clients qemu-kvm virtinst libguestfs-tools bridge-utils socat conntrack wget

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker

wget https://storage.googleapis.com/minikube/releases/v1.11.0/minikube-linux-amd64
sudo chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.0/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/

echo '1' | sudo tee /proc/sys/net/bridge/bridge-nf-call-iptables

echo 'source <(kubectl completion bash)' >> ~/.bashrc
source ~/.bashrc

minikube start --driver=none --kubernetes-version v1.23.0
