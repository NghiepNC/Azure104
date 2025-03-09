# 🏢 Administrative Units (AU) Trong Azure AD  

## 1. Administrative Units (AU) Là Gì?  
**Administrative Units (AU)** là cách để nhóm **người dùng, nhóm, thiết bị** trong một tổ chức để phân quyền quản trị. AU giúp **phân đoạn quản lý trong Azure AD** mà không cần chia nhỏ Tenant.  

---

## 2. Khi Nào Nên Sử Dụng Administrative Units?  
✅ Khi tổ chức có **nhiều chi nhánh hoặc bộ phận** cần quản lý độc lập.  
✅ Khi cần **hạn chế quyền của Admin** chỉ trong một nhóm người dùng/thiết bị cụ thể.  
✅ Khi muốn **tăng cường bảo mật** bằng cách phân quyền theo đơn vị tổ chức.  

---

## 3. Các Thành Phần Chính Của Administrative Units  

| Thành phần | Mô tả |
|------------|--------|
| **Users & Groups** | AU có thể chứa **người dùng & nhóm** cụ thể trong Tenant. |
| **Devices** | AU có thể quản lý các thiết bị (nếu được bật). |
| **Scoped Admin** | Gán Admin chỉ có quyền trong AU, không phải toàn bộ Azure AD. |
| **RBAC for AU** | Chỉ định quyền quản trị **User Administrator, Helpdesk Administrator** cho từng AU. |

---

## 4. Cách Tạo & Quản Lý Administrative Units  

### 4.1. **Tạo AU Mới**  
📌 **Azure Portal → Azure AD → Administrative Units → New AU**  
✅ **Đặt tên** cho AU (VD: "Chi Nhánh Hà Nội").  
✅ **Thêm Users/Groups/Devices** vào AU.  
✅ **Gán Admin** để quản lý chỉ trong phạm vi AU.  

### 4.2. **Quản Lý AU**  
✅ **Thêm hoặc xóa Users, Groups, Devices** khỏi AU.  
✅ **Gán quyền Scoped Admin** để giới hạn quyền quản trị.  
✅ **Sử dụng Conditional Access theo AU** để áp dụng chính sách bảo mật riêng.  

---

## 5. Các Quyền Quản Trị Quan Trọng Trong AU  

| Role | Quyền Hạn |
|------|----------|
| **User Administrator** | Quản lý người dùng trong AU. |
| **Group Administrator** | Quản lý nhóm trong AU. |
| **Helpdesk Administrator** | Đặt lại mật khẩu cho user trong AU. |
| **Authentication Administrator** | Quản lý xác thực & MFA trong AU. |

---

## 6. Hạn Chế Của Administrative Units  
🚨 **AU không hỗ trợ:**  
- Phân đoạn **Subscription hoặc Resource Groups** (chỉ dùng cho Azure AD).  
- Quản lý **ứng dụng & dịch vụ Azure khác** ngoài User, Group, Device.  
- **Dynamic Membership:** Hiện tại phải thêm User/Group thủ công.  

---

## 7. Kết Luận  
🔹 **AU giúp phân quyền quản trị Azure AD theo đơn vị tổ chức.**  
🔹 **Scoped Admin giúp giảm thiểu rủi ro bảo mật do quyền Admin quá rộng.**  
🔹 **AU phù hợp cho doanh nghiệp lớn với nhiều chi nhánh & bộ phận riêng biệt.**  


