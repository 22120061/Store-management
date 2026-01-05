# Bước 1: Chọn Image nền (Base Image) có sẵn Node.js
FROM node:18-alpine

# Bước 2: Thiết lập thư mục làm việc bên trong Container
WORKDIR /app

# Bước 3: Copy các file quản lý thư viện vào trước
COPY package*.json ./

# Bước 4: Cài đặt các thư viện (dependencies)
RUN npm install

# Bước 5: Copy toàn bộ mã nguồn còn lại vào Container
COPY . .

# Bước 6: Mở cổng 3000 (trùng với cổng trong server.js của bạn)
EXPOSE 3000

# Bước 7: Lệnh để khởi chạy ứng dụng
CMD ["node", "server.js"]