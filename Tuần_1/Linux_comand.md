# 🐧 TỔNG HỢP LỆNH CƠ BẢN TRONG LINUX & OPTION HAY DÙNG

---

## 1. Di chuyển và xem thư mục

### 1.1. Lệnh `ls`
- **Mô tả:** Dùng để liệt kê các file và thư mục trong thư mục hiện tại hoặc thư mục chỉ định.
- **Cấu trúc:** `ls [tùy chọn] [đường dẫn]`

| Tùy chọn | Mô tả |
|----------|------|
| `-a`     | Hiển thị tất cả, bao gồm file ẩn bắt đầu bằng `.` |
| `-d`     | Chỉ hiển thị thư mục, không hiển thị nội dung bên trong |
| `-h`     | Dễ đọc kích thước file (1K, 10M,...) khi kết hợp với `-l` |
| `-l`     | Hiển thị chi tiết: quyền, chủ sở hữu, thời gian... |
| `-R`     | Đệ quy – hiển thị cả file trong thư mục con |
| `-S`     | Sắp xếp theo kích thước |
| `-t`     | Sắp xếp theo thời gian chỉnh sửa gần nhất |

### 1.2. Lệnh `cd`
- **Mô tả:** Dùng để di chuyển đến thư mục khác trong hệ thống file.
- **Cấu trúc:** `cd [đường dẫn]`

| Cú pháp | Mô tả |
|--------|------|
| `cd ..` | Di chuyển lên thư mục cha |
| `cd ~`  | Về thư mục home của người dùng |
| `cd /`  | Về thư mục gốc hệ thống |

### 1.3. Lệnh `pwd`
- **Mô tả:** Hiển thị đường dẫn đầy đủ của thư mục hiện tại.
- **Cấu trúc:** `pwd`

---

## 2. Tạo / Xóa file & folder

### 2.1. Lệnh `touch`
- **Mô tả:** Tạo file rỗng hoặc cập nhật timestamp của file.
- **Cấu trúc:** `touch [tên file]`

### 2.2. Lệnh `mkdir`
- **Mô tả:** Tạo thư mục mới.
- **Cấu trúc:** `mkdir [tùy chọn] [tên thư mục]`

| Tùy chọn | Mô tả |
|----------|------|
| `-p`     | Tạo thư mục cha nếu chưa tồn tại |

### 2.3. Lệnh `rm`
- **Mô tả:** Xóa file hoặc thư mục.
- **Cấu trúc:** `rm [tùy chọn] [tên file/thư mục]`

| Tùy chọn | Mô tả |
|----------|------|
| `-r`     | Xóa đệ quy (cần cho thư mục) |
| `-f`     | Xóa không cần xác nhận |

### 2.4. Lệnh `rmdir`
- **Mô tả:** Xóa thư mục rỗng.
- **Cấu trúc:** `rmdir [tên thư mục]`

---

## 3. Xem và sửa file

### 3.1. Lệnh `cat`
- **Mô tả:** Hiển thị nội dung file, dùng cho file nhỏ.
- **Cấu trúc:** `cat [file]`

### 3.2. Lệnh `less`
- **Mô tả:** Xem nội dung file lớn, cuộn từng phần.
- **Cấu trúc:** `less [file]`

### 3.3. Lệnh `head`
- **Mô tả:** Hiển thị 10 dòng đầu tiên (mặc định).
- **Cấu trúc:** `head [file]`

| Tùy chọn | Mô tả |
|----------|------|
| `-n`     | Chỉ định số dòng hiển thị |

### 3.4. Lệnh `tail`
- **Mô tả:** Hiển thị 10 dòng cuối (mặc định).
- **Cấu trúc:** `tail [file]`

| Tùy chọn | Mô tả |
|----------|------|
| `-n`     | Chỉ định số dòng hiển thị |
| `-f`     | Theo dõi file realtime (log file) |

### 3.5. Lệnh `vi`
- **Mô tả:** Trình chỉnh sửa văn bản mạnh mẽ trên terminal.
- **Cấu trúc:** `vi [file]`
- **Chế độ:**
  - `Esc`: chuyển sang chế độ lệnh
  - `i`: chế độ insert (chỉnh sửa)
  - `:w`: lưu file
  - `:q`: thoát
  - `:wq`: lưu và thoát
  - `:q!`: thoát mà không lưu

### 3.6. Lệnh `nano`
- **Mô tả:** Trình soạn thảo văn bản đơn giản và dễ dùng trong terminal.
- **Cấu trúc:** `nano [file]`
- **Phím tắt thường dùng:**
  - `Ctrl + O`: lưu file
  - `Ctrl + X`: thoát
  - `Ctrl + K`: cắt dòng
  - `Ctrl + U`: dán dòng
## 4. Sao chép, di chuyển file

### 4.1. Lệnh `cp`
- **Mô tả:** Sao chép file hoặc thư mục.
- **Cấu trúc:** `cp [tùy chọn] nguồn đích`

| Tùy chọn | Mô tả |
|----------|------|
| `-r`     | Sao chép thư mục |
| `-u`     | Chỉ sao chép nếu nguồn mới hơn đích |

### 4.2. Lệnh `mv`
- **Mô tả:** Di chuyển hoặc đổi tên file.
- **Cấu trúc:** `mv nguồn đích`

---

## 5. Tìm kiếm, xử lý chuỗi

### 5.1. Lệnh `grep`
- **Mô tả:** Tìm dòng chứa chuỗi phù hợp.
- **Cấu trúc:** `grep [chuỗi] [file]`

| Tùy chọn | Mô tả |
|----------|------|
| `-i`     | Không phân biệt hoa thường |
| `-r`     | Tìm trong thư mục con |
| `-n`     | Hiển thị số dòng |

### 5.2. Lệnh `awk`
- **Mô tả:** Tách và xử lý theo dòng & cột.
- **Cấu trúc:** `awk '{print $1}' [file]`

### 5.3. Lệnh `sed`
- **Mô tả:** Dùng để tìm và thay thế văn bản.
- **Cấu trúc:** `sed 's/old/new/g' [file]`

---

## 6. Lên lịch tự động

### 6.1. Lệnh `crontab`
- **Mô tả:** Thiết lập lịch tự động chạy script định kỳ với định dạng linh hoạt theo phút, giờ, ngày, tháng, thứ trong tuần.
- **Cấu trúc:** `crontab -e`

- **Cú pháp cron:**
```
*     *     *     *     *     lệnh
-     -     -     -     -
|     |     |     |     |
|     |     |     |     +----- Thứ (0 = CN, 1 = T2, ..., 6 = T7)
|     |     |     +----------- Tháng (1 - 12)
|     |     +--------------- Ngày trong tháng (1 - 31)
|     +------------------- Giờ (0 - 23)
+----------------------- Phút (0 - 59)
```

- **Ví dụ cụ thể:**
```bash
0 1 * * * /home/user/script.sh   # Chạy lúc 01:00 AM mỗi ngày
30 7 * * 1 /home/user/weekly.sh  # Chạy 07:30 sáng mỗi thứ Hai
*/15 * * * * /home/user/ping.sh  # Chạy mỗi 15 phút
```
- **Xem danh sách cronjobs hiện có:**
```bash
crontab -l
```
- **Xóa toàn bộ cronjobs:**
```bash
crontab -r
```

---

## 7. Quản lý service

### 7.1. Lệnh `systemctl`
- **Mô tả:** Dùng trên các hệ thống dùng systemd.

| Lệnh | Mô tả |
|------|------|
| `systemctl start nginx`  | Bắt đầu service nginx |
| `systemctl stop nginx`   | Dừng service nginx |
| `systemctl status nginx` | Xem trạng thái |
| `systemctl enable nginx` | Tự động bật khi khởi động |

### 7.2. Lệnh `service`
- **Mô tả:** Hệ thống cũ hơn.

| Lệnh | Mô tả |
|------|------|
| `service apache2 start`  | Bắt đầu apache2 |
| `service apache2 restart`| Khởi động lại |
| `service apache2 status` | Xem trạng thái |

---

## 8. Phân quyền và quyền truy cập

### 8.1. Lệnh `chmod`
- **Mô tả:** Thay đổi quyền truy cập file/thư mục.
- **Cấu trúc:** `chmod [tùy chọn] quyền file`
- Cách đặt quyền (dạng số): `r=4`, `w=2`, `x=1`
  - Ví dụ: `chmod 755 file.sh` → chủ sở hữu full, nhóm & others chỉ đọc + chạy
- Cách thêm quyền (dạng chữ):
   - chmod +x file       # Thêm quyền thực thi cho tất cả
   - chmod u+x file      # Thêm quyền thực thi cho user (chủ sở hữu)
   - chmod g-w file      # Gỡ quyền ghi của group
   - chmod o=r file      # Đặt quyền read duy nhất cho others

| Tùy chọn | Mô tả |
|----------|------|
| `-R`     | Áp dụng đệ quy với thư mục con |

### 8.2. Lệnh `sudo`
- **Mô tả:** Thực thi lệnh với quyền `superuser`
- **Cấu trúc:** `sudo [lệnh]`
- Ví dụ:
```bash
sudo apt update
sudo systemctl restart nginx
```

### 8.3. Truy cập root (nếu cần)
- **Lệnh:** `sudo -i` hoặc `su`
- `sudo -i`: mở shell với quyền root (nếu có quyền sudo)
- `su`: đăng nhập user root (yêu cầu biết mật khẩu root)

