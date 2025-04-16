# 🧠 GIT CƠ BẢN – LỆNH, GIẢI THÍCH & VÍ DỤ

---

## 1. Cấu hình Git lần đầu

### 1.1. Thiết lập tên và email
```bash
git config --global user.name "Tên của bạn"
git config --global user.email "email@domain.com"
```
👉 `--global` nghĩa là cấu hình áp dụng cho toàn bộ hệ thống. Nếu muốn chỉ áp dụng cho một project cụ thể, hãy bỏ `--global`.

### 1.2. Xóa tên hoặc email đã cấu hình (nếu cần)
```bash
git config --global --unset user.name
git config --global --unset user.email
```

### 1.3. Kiểm tra cấu hình hiện tại
```bash
git config --list
```

---

## 2. Khởi tạo & clone repo

### 2.1. Tạo repo mới (local)
```bash
git init
```
👉 Tạo thư mục ẩn `.git` để theo dõi thay đổi và quản lý phiên bản trong thư mục hiện tại.

### 2.2. Clone repo từ GitHub
```bash
git clone https://github.com/user/repo.git
```
👉 Tải repo về máy + tự tạo thư mục trùng tên repo.

---

## 3. Cơ bản về commit

### 3.1. Kiểm tra trạng thái repo
```bash
git status
```
👉 Hiển thị các file đã thay đổi, thêm mới hoặc đã staged.

### 3.2. Thêm file vào staging
```bash
git add tenfile.txt     # Thêm 1 file
```
```bash
git add .               # Thêm tất cả file đã thay đổi
```
👉 Đưa file vào vùng staging – chuẩn bị để commit.

### 3.3. Commit thay đổi
```bash
git commit -m "Mô tả thay đổi"
```
👉 Ghi lại snapshot của repo ở thời điểm hiện tại.

### 3.4. Xem lại lịch sử commit
```bash
git log
```
👉 Hiển thị lịch sử commit theo thứ tự thời gian.

---

## 4. Làm việc với nhánh (branch)

### 4.1. Xem các nhánh hiện có
```bash
git branch
```

### 4.2. Tạo nhánh mới
```bash
git branch ten-nhanh
```

### 4.3. Chuyển sang nhánh khác
```bash
git checkout ten-nhanh
```

### 4.4. Tạo + chuyển nhánh 1 lần
```bash
git checkout -b ten-nhanh
```

### 4.5. Xóa nhánh
```bash
git branch -d ten-nhanh
```
👉 Nếu chưa merge, dùng `-D` để ép xóa:
```bash
git branch -D ten-nhanh
```

---

## 5. Gộp nhánh (merge)

### 5.1. Gộp nhánh A vào nhánh hiện tại
```bash
git merge ten-nhanh-A
```
👉 Phải đang đứng ở nhánh đích (thường là `main` hoặc `develop`).

### 5.2. Giải quyết xung đột merge (nếu có)
- Mở file bị conflict và sửa thủ công
- Sau đó:
```bash
git add .
git commit -m "Giải quyết conflict"
```

---

## 6. Làm việc với GitHub (remote)

### 6.1. Liên kết repo local với remote
```bash
git remote add origin https://github.com/user/repo.git
```

### 6.2. Push lên GitHub lần đầu
```bash
git push -u origin main
```
👉 `-u` set upstream để các lần sau chỉ cần `git push`

### 6.3. Push bình thường
```bash
git push
```

### 6.4. Kéo thay đổi mới nhất về
```bash
git pull
```
👉 Kéo thay đổi từ remote về và merge vào nhánh hiện tại.

---

## 7. Một số lệnh hữu ích khác

### 7.1. Xem sự khác biệt
```bash
git diff              # So sánh thay đổi chưa commit
```
```bash
git diff --staged     # So sánh những file đã add
```

### 7.2. Quay lại commit trước (reset)
```bash
git reset --soft HEAD~1
```
👉 Quay lại commit trước, giữ lại thay đổi trong file

```bash
git reset --mixed HEAD~1   # Gỡ bỏ khỏi staging
```
```bash
git reset --hard HEAD~1    # Quay lại hoàn toàn, mất thay đổi (cẩn thận)
```

### 7.3. Xóa file khỏi Git (vẫn giữ file trên máy)
```bash
git rm --cached tenfile.txt
```

### 7.4. Bỏ theo dõi toàn bộ file đã commit
```bash
git rm -r --cached .
git add .
git commit -m "Xóa cache"
```

---

## 8. Tệp `.gitignore`

### 8.1. Tạo file `.gitignore`
```bash
touch .gitignore
```

### 8.2. Ví dụ nội dung:
```
node_modules/
.env
*.log
```
👉 Các file trong danh sách sẽ không được Git theo dõi.

---

## 9. Khôi phục & hoàn tác

### 9.1. Hủy thay đổi chưa commit
```bash
git checkout -- tenfile.txt
```
👉 Trả lại trạng thái như commit cuối.

### 9.2. Hủy thay đổi đã `add` vào staging
```bash
git reset tenfile.txt
```
👉 Gỡ file ra khỏi khu vực staging.

### 9.3. Hoàn tác commit bằng revert (không xóa lịch sử)
```bash
git revert <mã-commit>
```
👉 Tạo một commit mới đảo ngược commit cũ.

