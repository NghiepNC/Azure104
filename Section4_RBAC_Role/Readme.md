# 🔐 Tổng Quan Về RBAC, Azure Roles, Azure AD Roles  

## 1️⃣ Role-Based Access Control (RBAC) Là Gì?  
**RBAC (Role-Based Access Control)** là mô hình quản lý quyền dựa trên vai trò, giúp kiểm soát **ai có thể làm gì** trong Azure.  
✅ Giúp phân quyền truy cập theo nguyên tắc **Least Privilege (ít quyền nhất cần thiết).**  
✅ **Không cấp quyền trực tiếp cho user** mà thông qua các **Role Assignments**.  

---

## 2️⃣ Azure Roles Là Gì?  
**Azure Roles** kiểm soát **truy cập tài nguyên trong Azure** như **VM, Storage, Databases**.  
📌 **Quyền quản lý ở cấp độ: Subscription, Resource Group, Resource.**  

| **Azure Role** | **Quyền Hạn** |
|---------------|--------------|
| **Owner** | Toàn quyền (bao gồm cấp quyền RBAC). |
| **Contributor** | Quản lý tài nguyên nhưng không cấp quyền. |
| **Reader** | Chỉ xem tài nguyên, không thể chỉnh sửa. |
| **User Access Administrator** | Quản lý quyền truy cập RBAC. |

📌 **Ví dụ về Azure Role Assignment:**  
```powershell
# Gán Contributor cho user
New-AzRoleAssignment -SignInName "user@example.com" -RoleDefinitionName "Contributor" -Scope "/subscriptions/{subscriptionId}"
```

## 3️⃣ Azure AD Roles Là Gì?
Azure AD Roles kiểm soát quyền quản trị trong Azure Active Directory (quản lý người dùng, nhóm, ứng dụng).  
📌 Quyền quản lý ở cấp độ: Azure AD (Tenant).

| **Azure Role** | **Quyền Hạn** |
|---------------|--------------|
| **Global Administrator** | Toàn quyền quản trị Azure AD.. |
| **User Administrator** | Quản lý User, Groups, Passwords. |
| **Application Administrator** | Quản lý Apps đăng ký trong Azure AD. |
| **Security Administrator** | Quản lý bảo mật và Conditional Access. |


## 4️⃣ So Sánh Azure Roles vs Azure AD Roles  

| Tiêu chí | **Azure Roles** | **Azure AD Roles** |
|----------|---------------|----------------|
| **Mục đích** | Quản lý tài nguyên Azure (VM, Storage, SQL, v.v.) | Quản lý Azure AD (User, Group, App, MFA, v.v.) |
| **Phạm vi quản lý** | Subscription, Resource Group, Resource | Tenant (Azure AD) |
| **Cách gán quyền** | Gán theo **Scope của tài nguyên** (RBAC) | Gán trong **Azure AD** |
| **Ví dụ Role** | Owner, Contributor, Reader | Global Admin, User Admin |

### 📌 Khi nào dùng Azure Roles?  
- Khi cần kiểm soát **truy cập vào tài nguyên Azure** (VM, Storage, SQL, v.v.).  

### 📌 Khi nào dùng Azure AD Roles?  
- Khi cần quản lý **người dùng, nhóm, ứng dụng, bảo mật** trong Azure AD.  

---

## 5️⃣ Kiến Trúc RBAC Trong Azure  

🔹 **RBAC bao gồm 3 thành phần chính:**  

### 5.1 **Security Principal (Người hoặc nhóm nhận quyền)**  
- **User** (Người dùng cụ thể).  
- **Group** (Nhóm chứa nhiều User).  
- **Service Principal** (Ứng dụng / Service).  
- **Managed Identity** (Dịch vụ có danh tính riêng).  

### 5.2 **Role Definition (Danh sách quyền có sẵn)**  
- Mỗi Role gồm **Actions (cho phép làm gì)** và **NotActions (cấm làm gì)**.  
- Có **3 nhóm Role chính**:  
  - **Built-in Roles** (Role có sẵn của Azure).  
  - **Custom Roles** (Role do người dùng tự tạo).  
  - **Default Roles** (Role mặc định khi tạo Azure AD).  

### 5.3 **Scope (Phạm vi áp dụng quyền)**  
- **Management Group** (Cao nhất).  
- **Subscription** (Quản lý nhiều Resource Groups).  
- **Resource Group** (Nhóm tài nguyên).  
- **Resource** (Từng tài nguyên cụ thể).  

📌 **Cách hoạt động của RBAC:**  
- Nếu một User có quyền **Owner trên Resource Group**, họ **tự động có quyền trên tất cả tài nguyên bên trong**.  
- Quyền được kế thừa từ **cấp cao xuống cấp thấp**.  

📌 **Ví dụ kiến trúc RBAC thực tế:**  
- **Admin:** Có quyền **Owner** trên Subscription.  
- **Dev Team:** Có quyền **Contributor** trên Resource Group.  
- **Security Team:** Chỉ có quyền **Reader** để giám sát tài nguyên.  

