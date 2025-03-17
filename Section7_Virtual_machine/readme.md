# 🚀 Tổng Hợp Kiến Thức Về Azure Virtual Machines (Azure VM) – AZ-104  

## 1️⃣ Giới Thiệu Azure Virtual Machines  
**Azure VM** là dịch vụ cung cấp máy ảo trên nền tảng đám mây, giúp triển khai và quản lý ứng dụng mà không cần đầu tư hạ tầng vật lý.  

✅ **Hỗ trợ nhiều hệ điều hành**: Windows, Linux  
✅ **Tích hợp với Azure Services**: Networking, Storage, Security  
✅ **Hỗ trợ scaling**: Autoscale, VM Scale Sets  
✅ **Quản lý dễ dàng**: Portal, CLI, PowerShell, ARM Templates  

---

## 2️⃣ Các Thành Phần Chính Của VM  

| **Thành phần** | **Mô tả** |
|--------------|----------|
| **Compute** | Cung cấp CPU, RAM (VM Size) |
| **Disk** | OS Disk, Data Disk, Temporary Disk |
| **Networking** | Public IP, Private IP, NSG, Load Balancer, VNet |
| **Storage** | Managed Disk, Unmanaged Disk, Ephemeral OS Disk |
| **Availability** | Availability Sets, Availability Zones |
| **Scaling** | VM Scale Sets |
| **Security** | Azure Bastion, Just-in-Time (JIT), Azure Policy |

---

## 3️⃣ Các Loại VM Trong Azure  

Azure cung cấp nhiều **VM Series** phù hợp với từng nhu cầu:  

| **VM Series** | **Mục đích sử dụng** |
|--------------|--------------------|
| **B-Series (Burstable)** | Ứng dụng nhẹ, phát triển, thử nghiệm |
| **D-Series** | General purpose (cân bằng giữa CPU, RAM) |
| **E-Series** | Workload cần nhiều RAM (SAP, database) |
| **F-Series** | Ứng dụng tính toán cao (HPC, AI) |
| **M-Series** | Workload siêu lớn (SAP HANA) |
| **L-Series** | Ứng dụng lưu trữ (NoSQL, Big Data) |
| **NV/NC/ND-Series** | GPU cho AI/ML, video rendering |

---

## 4️⃣ Ổ Đĩa Lưu Trữ Cho Azure VM  

| **Loại Disk** | **Mô tả** | **Tính năng chính** |
|--------------|----------|----------------|
| **OS Disk** | Lưu trữ hệ điều hành | Managed hoặc Unmanaged |
| **Data Disk** | Lưu trữ dữ liệu ứng dụng | Gắn thêm vào VM |
| **Temporary Disk** | Lưu trữ tạm thời | Xóa khi restart |
| **Ephemeral OS Disk** | Lưu OS trên local SSD | Không tốn chi phí storage |

**Các cấp độ lưu trữ (Storage Tiers):**  
✅ **Standard HDD** – Giá rẻ, hiệu suất thấp  
✅ **Standard SSD** – Giá trung bình, hiệu suất cao hơn  
✅ **Premium SSD** – Hiệu suất cao, dùng cho production  
✅ **Ultra SSD** – Hiệu suất cực cao, latency thấp  

---

## 5️⃣ Quản Lý Mạng Cho VM  

| **Thành phần mạng** | **Mô tả** |
|--------------------|----------|
| **VNet (Virtual Network)** | Kết nối VM với các dịch vụ khác |
| **Subnet** | Chia nhỏ VNet để kiểm soát lưu lượng |
| **NSG (Network Security Group)** | Điều khiển inbound & outbound traffic |
| **Public IP** | Cung cấp địa chỉ IP công khai |
| **Private IP** | Dùng trong nội bộ Azure |
| **Load Balancer** | Phân phối tải giữa các VM |
| **VPN Gateway** | Kết nối Azure với on-premises |

---

## 6️⃣ Tính Sẵn Sàng & Khả Năng Mở Rộng  

### ✅ **Availability Options**  
- **Availability Set**: Đảm bảo VM không bị down do lỗi phần cứng (Fault Domain, Update Domain)  
- **Availability Zone**: Phân bổ VM giữa các Datacenter khác nhau trong cùng Region  

### ✅ **Scaling Options**  
- **Manual Scaling**: Thêm VM thủ công  
- **VM Scale Sets**: Tự động scaling lên/xuống dựa vào demand  

---

## 7️⃣ Bảo Mật Cho Azure VM  

| **Tính năng bảo mật** | **Mô tả** |
|----------------------|----------|
| **Just-in-Time (JIT)** | Giới hạn truy cập RDP/SSH theo thời gian |
| **Azure Bastion** | Truy cập VM mà không cần public IP |
| **Disk Encryption** | Mã hóa dữ liệu trên OS/Data Disk |
| **Azure Defender** | Bảo vệ VM khỏi malware, attack |
| **Microsoft Entra ID (Azure AD)** | Xác thực truy cập VM |

---

## 8️⃣ Quản Lý VM Với Azure  

| **Công cụ** | **Chức năng** |
|------------|------------|
| **Azure Portal** | Giao diện UI để quản lý |
| **Azure CLI** | Command-line để quản lý VM |
| **Azure PowerShell** | Script tự động hóa |
| **ARM Templates** | IaC (Infrastructure as Code) |
| **Azure Policy** | Áp dụng quy tắc bảo mật |
| **Azure Monitor** | Giám sát hiệu suất, cảnh báo |

---

## 9️⃣ Sao Lưu & Phục Hồi VM  

| **Tính năng** | **Mô tả** |
|-------------|----------|
| **Azure Backup** | Tự động backup VM theo lịch trình |
| **Snapshot** | Chụp nhanh OS/Data Disk |
| **Restore Points** | Tạo điểm khôi phục VM |

📌 **Lưu ý:**  
- **Backup Vault** giúp lưu trữ backup lâu dài  
- **Soft Delete** bảo vệ backup khỏi xóa nhầm  

---

## 🔥 1️⃣0️⃣ Các Lệnh Azure CLI Quan Trọng  

📌 **Tạo Azure VM:**  
```bash
az vm create --resource-group myResourceGroup \
  --name myVM --image UbuntuLTS --size Standard_DS1_v2 \
  --admin-username azureuser --generate-ssh-keys
