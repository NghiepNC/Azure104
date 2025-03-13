# 🏪 Azure Blob Storage - Lưu Trữ Đối Tượng Trên Azure  

## 1️⃣ Azure Blob Storage Là Gì?  
**Azure Blob Storage** là dịch vụ lưu trữ **dữ liệu không có cấu trúc (unstructured data)** trên Azure, tối ưu cho:  
✅ Ảnh, video, file log, backup, dữ liệu big data  
✅ Lưu trữ tĩnh cho website, machine learning, IoT  
✅ Hỗ trợ truy xuất dữ liệu qua HTTP(S)  

---

## 2️⃣ Kiến Trúc Của Blob Storage  

📌 **Cấu trúc lưu trữ gồm 3 phần chính:**  
- **Storage Account** → Chứa các **Containers**  
- **Containers** → Chứa các **Blobs**  
- **Blobs** → Dữ liệu thực tế được lưu trữ  

📌 **Ví dụ đường dẫn của một Blob:**  
```sh
https://mystorageaccount.blob.core.windows.net/mycontainer/myfile.jpg
```

---

## 3️⃣ Các Loại Blob Trong Azure  

| **Loại Blob** | **Mô tả** | **Trường hợp sử dụng** |
|--------------|----------|----------------|
| **Block Blob** | Lưu trữ dữ liệu lớn chia thành khối (block) | Ảnh, video, file backup |
| **Append Blob** | Dữ liệu thêm vào cuối file, không chỉnh sửa block trước | Log, telemetry data |
| **Page Blob** | Lưu dữ liệu có cấu trúc 512-byte pages, hỗ trợ random read/write | Virtual Machine Disk (VHD) |

---

## 4️⃣ Cấp Độ Lưu Trữ (Storage Tiers)  

| **Tier** | **Mô tả** | **Chi phí** |
|---------|----------|------------|
| **Hot** | Truy cập thường xuyên | Cao |
| **Cool** | Ít truy cập, lưu tối thiểu 30 ngày | Trung bình |
| **Archive** | Lưu trữ dài hạn, cần thời gian phục hồi | Thấp |

---

## 5️⃣ Bảo Mật & Truy Cập  

✅ **Mã hóa dữ liệu (Encryption at Rest - AES-256).**  
✅ **Shared Access Signature (SAS)**: Chia sẻ tạm thời với quyền hạn cụ thể.  
✅ **Role-Based Access Control (RBAC)**: Kiểm soát truy cập theo vai trò.  
✅ **Firewall & Virtual Network Rules**: Giới hạn IP hoặc VNet truy cập Blob.  

---

## 6️⃣ Thực Hành Tạo Blob Storage  

📌 **Tạo Storage Account & Blob Container bằng Azure CLI**  
```bash
# Tạo Storage Account
az storage account create --name mystorageaccount \
  --resource-group myResourceGroup --location eastus \
  --sku Standard_LRS

# Tạo Container
az storage container create --name mycontainer --account-name mystorageaccount

```
📌 **Tải file lên Blob Storage** 
```sh
az storage blob upload --account-name mystorageaccount \
  --container-name mycontainer --name myfile.txt --file ./localfile.txt
```

📌 **Lấy URL file để chia sẻ** 
```sh
az storage blob url --container-name mycontainer --name myfile.txt --account-name mystorageaccount
```

