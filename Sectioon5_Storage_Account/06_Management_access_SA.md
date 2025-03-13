# **Quản lý & Truy cập Azure Storage Account - AZ-104**

## **1. Các phương thức quản lý quyền truy cập trong Azure Storage Account**
Azure cung cấp nhiều cách để quản lý quyền truy cập vào Storage Account, bao gồm:

1. **Azure Role-Based Access Control (RBAC)**  
   - Quản lý quyền trên Storage Account dựa trên vai trò (IAM).
   - Cấp quyền ở mức **Subscription, Resource Group hoặc Storage Account**.
   - Một số vai trò RBAC phổ biến:
     | **Vai trò** | **Quyền** |
     |------------|----------|
     | Storage Account Contributor | Toàn quyền quản lý Storage Account nhưng không quản lý access keys |
     | Storage Blob Data Owner | Toàn quyền đọc, ghi, xóa blobs & containers |
     | Storage Blob Data Contributor | Đọc, ghi, xóa blobs nhưng không cấp quyền |
     | Storage Blob Data Reader | Chỉ có quyền đọc blobs |

2. **Access Keys (Khóa truy cập)**
   - Mỗi Storage Account có **2 Access Keys** để xác thực API & dịch vụ.
   - Gồm: **Storage Account Name** + **Key**.
   - Bảo mật kém hơn RBAC do khó kiểm soát & xoay vòng khóa.

3. **Shared Access Signature (SAS)**
   - Cấp quyền truy cập tạm thời và giới hạn đến các dịch vụ trong Storage Account (Blob, File, Table, Queue).
   - Có thể đặt **thời gian hết hạn, địa chỉ IP, quyền đọc/ghi/xóa**.
   - Hỗ trợ 2 loại:
     - **Account SAS**: Cấp quyền trên toàn bộ Storage Account.
     - **Service SAS**: Chỉ cấp quyền cho một dịch vụ cụ thể (VD: Blob Storage).

4. **Azure Active Directory (Azure AD) Authentication**
   - Xác thực người dùng/ứng dụng thông qua Azure AD thay vì Access Keys.
   - Áp dụng cho **Blob Storage & Queue Storage**.
   - Kết hợp với **RBAC** để quản lý chi tiết quyền truy cập.

5. **Private Endpoint & Firewall Rules**
   - **Private Endpoint**: Cho phép truy cập Storage Account thông qua mạng nội bộ Azure (VNet).
   - **Firewall Rules**: Chỉ cho phép truy cập từ IP hoặc mạng cụ thể.

---

## **2. SAS URL là gì?**
**SAS (Shared Access Signature) URL** là một URL đặc biệt chứa token SAS, giúp cấp quyền truy cập tạm thời vào Storage Account mà không cần dùng Access Keys.

### **Cấu trúc của SAS URL**
Ví dụ về một **Blob SAS URL**:
```sh
https://myaccount.blob.core.windows.net/mycontainer/myblob?sv=2023-06-01&st=2025-03-13T12%3A00%3A00Z&se=2025-03-14T12%3A00%3A00Z&sp=racwdl&spr=https&sig=abcdef123456789
```

### **Thành phần chính**
- `https://myaccount.blob.core.windows.net/mycontainer/myblob`: Đường dẫn đến tài nguyên.
- `sv=2023-06-01`: Phiên bản dịch vụ Storage.
- `st=2025-03-13T12:00:00Z`: Thời gian bắt đầu hiệu lực.
- `se=2025-03-14T12:00:00Z`: Thời gian hết hạn.
- `sp=racwdl`: Các quyền được cấp (**r** = read, **w** = write, **d** = delete, **c** = create, **a** = add, **l** = list).
- `spr=https`: Chỉ cho phép giao thức HTTPS.
- `sig=abcdef123456789`: Chữ ký bảo mật.

### **Cách tạo SAS Token**
Có thể tạo SAS URL bằng:
- **Azure Portal** → Storage Account → Shared Access Signature.
- **Azure CLI**:
  ```bash
  az storage blob generate-sas --account-name myaccount --container-name mycontainer --name myblob --permissions rwd --expiry 2025-03-14 --output tsv

```