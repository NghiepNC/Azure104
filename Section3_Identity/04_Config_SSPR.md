# 🔐 Self-Service Password Reset (SSPR) Trong Azure AD  

## 1️⃣ SSPR Là Gì?  
**Self-Service Password Reset (SSPR)** là tính năng cho phép người dùng đặt lại mật khẩu của họ mà **không cần liên hệ IT**. Điều này giúp **giảm tải công việc** cho bộ phận IT và **tăng tính bảo mật**.  

---

## 2️⃣ Các Thành Phần Quan Trọng Của SSPR  

| Thành phần | Mô tả |
|------------|--------|
| **Authentication Methods** | Cách xác thực khi đặt lại mật khẩu (VD: Email, SMS, App). |
| **SSPR Registration** | Yêu cầu người dùng đăng ký thông tin khôi phục. |
| **Password Reset Policies** | Quy định ai có thể sử dụng SSPR. |
| **Writeback to On-Prem AD** | Đồng bộ mật khẩu về Active Directory On-Prem (Hybrid). |

---

## 3️⃣ Cách Cấu Hình SSPR Trong Azure  

📌 **Bước 1:** Bật SSPR Cho Người Dùng  
- **Azure Portal → Azure AD → Password Reset → Properties**  
- Chọn **Enabled** cho một nhóm hoặc toàn bộ tenant  

📌 **Bước 2:** Cấu Hình Phương Thức Xác Thực  
- Vào tab **Authentication Methods**  
- Chọn số phương thức cần thiết (VD: **SMS, Email, Microsoft Authenticator**)  

📌 **Bước 3:** Yêu Cầu Người Dùng Đăng Ký Xác Thực  
- Vào **Registration** → Bật **Require users to register when signing in**  
- Người dùng sẽ được nhắc đăng ký khi đăng nhập lần đầu  

📌 **Bước 4:** Kiểm Tra Chính Sách Reset Mật Khẩu  
- Vào **Password Reset → Password Reset Policy**  
- Chọn **Security Questions, Lockout Threshold, Password Writeback** nếu cần  

📌 **Bước 5:** Kiểm Tra Reset Mật Khẩu  
Người dùng có thể reset mật khẩu qua:  
🔹 **https://aka.ms/sspr**  

---