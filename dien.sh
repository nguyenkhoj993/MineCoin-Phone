#!/bin/sh

# Cập nhật hệ thống và cài đặt các gói cần thiết
apt -y update && apt -y install sudo && apt install -y apt-transport-https ca-certificates curl software-properties-common && chmod +x /root/MineCoin-Phone/docker.sh && sh /root/MineCoin-Phone/docker.sh

# Chạy Docker container với proxy
# Thay đổi proxy_url và proxy_port với thông tin của bạn
#docker run --network my_custom_network -e HTTP_PROXY="http://proxy_url:proxy_port" -e HTTPS_PROXY="http://proxy_url:proxy_port" honeygain/honeygain -tou-get

# Tạo script để đăng nhập vào Honeygain
cat << EOF > ~/dangnhap.sh
#!/bin/sh

# Thông tin tài khoản và mật khẩu
EMAIL="ACCOUNT_EMAIL"
PASSWORD="ACCOUNT_PASSWORD"
DEVICE_NAME="DEVICE_NAME"

# Chạy lệnh Docker để đăng nhập vào Honeygain với proxy
docker run --network my_custom_network -e HTTP_PROXY="http://proxy_url:proxy_port" -e HTTPS_PROXY="http://proxy_url:proxy_port" honeygain/honeygain -tou-accept -email "\$EMAIL" -pass "\$PASSWORD" -device "\$DEVICE_NAME"

EOF

# Thay đổi quyền của file script
chmod +x ~/dangnhap.sh

echo "Đã tạo file dangnhap.sh. Hãy chỉnh sửa thông tin tài khoản và mật khẩu, sau đó chạy file bằng lệnh: ./dangnhap.sh"