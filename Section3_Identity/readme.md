# 🔐 Tổng Quan Về Identity Trong Azure  

## 1. Giới Thiệu  
**Azure Identity** giúp quản lý **xác thực (authentication)** và **ủy quyền (authorization)** trên Azure. Nó đảm bảo **bảo mật, kiểm soát truy cập và tuân thủ** cho người dùng, ứng dụng và dịch vụ.

## 2. Các Thành Phần Chính  

| Thành phần | Mô tả |
|------------|--------|
| **Azure Active Directory (Azure AD)** | Dịch vụ quản lý danh tính & truy cập trên Azure. |
| **Azure AD B2C** | Quản lý danh tính khách hàng (CIAM). |
| **Azure AD B2B** | Hỗ trợ cộng tác với người dùng bên ngoài. |
| **Role-Based Access Control (RBAC)** | Phân quyền truy cập theo vai trò. |
| **Managed Identities** | Cung cấp danh tính cho ứng dụng mà không cần lưu trữ mật khẩu. |
| **Conditional Access** | Chính sách truy cập có điều kiện (MFA, IP, thiết bị, v.v.). |
| **Privileged Identity Management (PIM)** | Quản lý truy cập đặc quyền cho admin. |
| **Identity Protection** | Giám sát & phát hiện rủi ro bảo mật danh tính. |

---

## 3. Các Chủ Đề Cần Tìm Hiểu  

### 3.1. **Azure Active Directory (Azure AD)**  
✅ Cách Azure AD hoạt động & sự khác biệt với AD truyền thống.  
✅ Cấu trúc Azure AD: **Tenants, Users, Groups, Applications**.  
✅ Các loại tài khoản trong Azure AD: **User, Guest, Service Principal, Managed Identity**.  

### 3.2. **Quản Lý Truy Cập Với RBAC**  
✅ Hiểu về **Role-Based Access Control (RBAC)**.  
✅ Các cấp độ phân quyền: **Subscription, Resource Group, Resource**.  
✅ Các role quan trọng: **Owner, Contributor, Reader, User Access Administrator**.  

### 3.3. **Managed Identities & Service Principal**  
✅ **System-assigned & User-assigned Managed Identity**.  
✅ Cách Managed Identity giúp ứng dụng truy cập Azure mà không cần mật khẩu.  
✅ Khi nào nên dùng **Service Principal vs Managed Identity**.  

### 3.4. **Conditional Access & Multi-Factor Authentication (MFA)**  
✅ Cách thiết lập **Chính sách truy cập có điều kiện (Conditional Access)**.  
✅ **Bật MFA** để tăng cường bảo mật.  
✅ Các chính sách phổ biến: **Chặn truy cập từ quốc gia cụ thể, yêu cầu thiết bị tuân thủ, bắt buộc dùng MFA**.  

### 3.5. **Privileged Identity Management (PIM) & Identity Protection**  
✅ **PIM** giúp quản lý tài khoản có quyền cao một cách tạm thời.  
✅ **Identity Protection** phát hiện & xử lý đăng nhập đáng ngờ.  
✅ Cách kiểm tra rủi ro bảo mật danh tính bằng Azure AD.  

---

## 4. Kết Luận  
🔹 **Azure Identity giúp quản lý danh tính & bảo mật truy cập cho cloud.**  
🔹 **Azure AD, RBAC, Managed Identities, Conditional Access là các công cụ quan trọng.**  
🔹 **Cần thiết lập bảo mật tốt với MFA, PIM & Identity Protection để tránh rủi ro.**  

