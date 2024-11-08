#!/bin/sh
# Thêm khóa GPG của Docker và repository Docker
sudo apt -y update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt -y update
apt update

# Cài đặt Docker
 sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


# Khởi động và kích hoạt Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Kiểm tra trạng thái Docker và phiên bản
sudo systemctl status docker
docker --version

# Tạo Docker network tùy chỉnh
docker network create my_custom_network