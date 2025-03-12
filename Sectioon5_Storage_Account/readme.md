# ☁️ Azure Storage Account  

## 1️⃣ Storage Account Là Gì?  
Azure Storage Account là dịch vụ lưu trữ **đám mây** giúp lưu trữ và quản lý dữ liệu như **tệp, bảng, hàng đợi, đĩa, và blob** một cách bảo mật, có thể mở rộng và chịu lỗi cao.  

---

## 2️⃣ Các Loại Storage Trong Azure  

| **Dịch vụ** | **Mô tả** | **Trường hợp sử dụng** |
|------------|----------|----------------|
| **Blob Storage** | Lưu trữ dữ liệu không có cấu trúc (hình ảnh, video, logs) | Backup, streaming, big data |
| **File Storage** | Chia sẻ tệp (SMB, NFS) giữa nhiều máy ảo | Lưu trữ file dùng chung |
| **Queue Storage** | Hàng đợi tin nhắn giữa các dịch vụ | Hệ thống phân tán, microservices |
| **Table Storage** | Cơ sở dữ liệu NoSQL dạng key-value | Lưu dữ liệu có thể mở rộng |
| **Disk Storage** | Lưu trữ đĩa cho VM (OS Disk, Data Disk) | Máy ảo Azure, ứng dụng yêu cầu IOPS cao |

---

## 3️⃣ Các Loại Storage Account  

| **Loại Storage Account** | **Mô tả** | **Hỗ trợ dịch vụ** |
|--------------------------|----------|----------------|
| **General Purpose v2 (GPv2)** | Hỗ trợ tất cả dịch vụ lưu trữ Azure | Blob, File, Queue, Table, Disk |
| **General Purpose v1 (GPv1)** | Phiên bản cũ của GPv2 | Blob, File, Queue, Table |
| **Blob Storage** | Chỉ hỗ trợ Blob Storage | Blob |
| **FileStorage** | Tối ưu hóa cho Azure Files | File |
| **BlockBlobStorage** | Tối ưu hóa cho khối dữ liệu lớn | Blob |

---

## 4️⃣ Các Cấp Độ Lưu Trữ (Storage Tiers)  

| **Tier** | **Mô tả** | **Chi phí** |
|---------|----------|------------|
| **Hot** | Truy cập thường xuyên | Cao |
| **Cool** | Truy cập không thường xuyên (lưu trữ 30 ngày trở lên) | Trung bình |
| **Archive** | Lưu trữ dài hạn (cần vài giờ để truy xuất) | Thấp |

---

## 5️⃣ Cấu Hình Replication (Độ Bền Dữ Liệu)  

| **Loại Replication** | **Mô tả** | **Chi phí** |
|---------------------|----------|------------|
| **LRS (Locally Redundant Storage)** | 3 bản sao trong cùng một vùng Azure | Thấp |
| **ZRS (Zone-Redundant Storage)** | 3 bản sao trong nhiều vùng (Availability Zones) | Trung bình |
| **GRS (Geo-Redundant Storage)** | 6 bản sao (3 bản chính, 3 bản ở vùng khác) | Cao |
| **RA-GRS (Read-Access Geo-Redundant Storage)** | Giống GRS nhưng có thể đọc dữ liệu ở vùng dự phòng | Cao |

---

## 6️⃣ Bảo Mật Trong Storage Account  

✅ **Encryption at Rest**: Dữ liệu được mã hóa tự động bằng AES-256.  
✅ **Shared Access Signature (SAS)**: Tạo link chia sẻ tạm thời với quyền hạn nhất định.  
✅ **Private Endpoints**: Hạn chế truy cập qua mạng nội bộ thay vì internet.  
✅ **Firewall & VNET Rules**: Hạn chế quyền truy cập dựa trên IP hoặc Virtual Network.  

---

## 7️⃣ Thực Hành Tạo Storage Account  

📌 **Tạo Storage Account bằng Azure CLI**  
```bash
az storage account create --name mystorageaccount \
  --resource-group myResourceGroup \
  --location eastus \
  --sku Standard_LRS
