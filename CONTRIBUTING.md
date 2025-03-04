# Đóng góp vào repo AZ-104

Cảm ơn bạn đã quan tâm đến việc đóng góp cho dự án này! 🎉  

## Cách đóng góp  
1. Fork repo này  
2. Tạo một nhánh mới (`git checkout -b feature/ten-tinh-nang`)  
3. Commit thay đổi của bạn (`git commit -m "Thêm tài liệu chương X"`)  
4. Push lên nhánh của bạn (`git push origin feature/ten-tinh-nang`)  
5. Tạo một Pull Request (PR) để xem xét thay đổi  


---

# 🚀 Hướng Dẫn Viết Commit Message Chuẩn

## 1. Cấu Trúc Commit Message Chuẩn
Một commit message chuẩn gồm 3 phần:

```plaintext
<type>(<scope>): <short summary>

<body> (tùy chọn)

<footer> (tùy chọn)
```

📌 **Trong đó:**
- **`<type>`**: Loại commit (feat, fix, refactor, chore, v.v.)
- **`<scope>`**: Phạm vi ảnh hưởng (optional, có thể là `docs`, `UI`, `backend`, `database`, `auth`, v.v.)
- **`<short summary>`**: Tóm tắt ngắn gọn thay đổi (không quá 72 ký tự)
- **`<body>`** (tùy chọn): Giải thích chi tiết về thay đổi
- **`<footer>`** (tùy chọn): Các thông tin đặc biệt như issue liên quan, breaking changes, v.v.

---

## ✅ 2. Các `type` thường dùng trong commit

| Type      | Ý nghĩa |
|-----------|--------------------------------|
| `feat`    | Thêm tính năng mới |
| `fix`     | Sửa lỗi |
| `docs`    | Thay đổi tài liệu (README, hướng dẫn) |
| `style`   | Chỉnh sửa format code, không ảnh hưởng logic |
| `refactor`| Tối ưu code mà không thay đổi chức năng |
| `test`    | Thêm hoặc sửa test case |
| `chore`   | Cấu hình CI/CD, build script, không ảnh hưởng code |
| `perf`    | Cải thiện hiệu suất |
| `ci`      | Cấu hình CI/CD |
| `revert`  | Hoàn tác một commit trước đó |

---

## 📌 3. Ví Dụ Commit Message Chuẩn

### 🔹 **Ví dụ 1: Thêm tính năng mới**
```plaintext
feat(auth): thêm chức năng đăng nhập với Google OAuth

- Sử dụng thư viện passport.js để xác thực
- Lưu token vào session để duy trì đăng nhập
- Cập nhật API `/auth/google/callback`
```

### 🔹 **Ví dụ 2: Sửa lỗi**
```plaintext
fix(api): sửa lỗi không lấy được danh sách người dùng

- Lỗi do thiếu điều kiện kiểm tra `status=active`
- Cập nhật query trong `UserService.ts`
- Đã kiểm tra trên local, lỗi không còn xuất hiện
```

### 🔹 **Ví dụ 3: Cập nhật tài liệu**
```plaintext
docs(readme): cập nhật hướng dẫn cài đặt repo
```

### 🔹 **Ví dụ 4: Cải thiện hiệu suất**
```plaintext
perf(db): tối ưu query lấy dữ liệu từ bảng orders

- Thêm index cho `customer_id`
- Giảm thời gian truy vấn từ 1.2s xuống 200ms
```

### 🔹 **Ví dụ 5: Hoàn tác commit trước đó**
```plaintext
revert: revert "feat: thêm chức năng đặt hàng"

Commit này gây lỗi checkout, cần rollback lại
```

---

## 🎯 4. Quy Tắc Viết Commit Message
✅ **Dùng tiếng Anh hoặc tiếng Việt nhưng phải rõ ràng**  
✅ **Tiêu đề commit phải ngắn gọn (dưới 72 ký tự)**  
✅ **Không viết hoa chữ cái đầu nếu không phải danh từ riêng**  
✅ **Không dùng dấu chấm ở cuối tiêu đề commit**  
✅ **Mô tả chi tiết thay đổi nếu cần**  
✅ **Nếu commit liên quan đến issue, ghi số issue trong footer**  

📌 **Ví dụ commit liên kết với issue**:
```plaintext
fix(auth): sửa lỗi không thể đăng xuất

- Nguyên nhân do không xóa cookie session
- Đã cập nhật middleware logout

Closes #42
```
(`Closes #42` sẽ tự động đóng issue #42 trên GitHub/GitLab)

---

## 🔥 5. Các Câu Lệnh Git Thường Dùng Khi Commit

### 📍 **Thêm file vào commit**
```sh
git add <file>
git commit -m "feat: thêm chức năng đăng ký người dùng"
```

### 📍 **Sửa lại commit cuối cùng (nếu chưa push)**
```sh
git commit --amend -m "fix: sửa lỗi đăng nhập"
```

### 📍 **Xem lịch sử commit**
```sh
git log --oneline --graph --decorate --all
```

### 📍 **Xóa commit cuối cùng (nếu chưa push)**
```sh
git reset --soft HEAD~1  # Giữ lại thay đổi
```

---

## ✅ 6. Tóm Tắt Best Practices
✔ **Sử dụng `feat`, `fix`, `docs`, `refactor`, `chore`, ...** để loại commit rõ ràng  
✔ **Giữ tiêu đề commit dưới 72 ký tự**
