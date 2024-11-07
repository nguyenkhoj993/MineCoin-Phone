#!/bin/sh
# Thêm khóa GPG của Docker và repository Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update

# Cài đặt Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Khởi động và kích hoạt Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Kiểm tra trạng thái Docker và phiên bản
sudo systemctl status docker
docker --version

# Tạo Docker network tùy chỉnh
docker network create my_custom_network