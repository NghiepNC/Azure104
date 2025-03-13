# **Azure Import/Export & Azure Data Box - Tóm tắt AZ-104**  

## **1. Giới thiệu về di chuyển dữ liệu trong Azure**  
Azure cung cấp nhiều giải pháp để **di chuyển dữ liệu** từ on-premises hoặc từ dịch vụ khác vào Azure Storage, bao gồm:  

1. **Azure Import/Export** – Dùng ổ đĩa cứng để di chuyển dữ liệu theo phương thức vật lý.  
2. **Azure Data Box** – Thiết bị chuyên dụng của Microsoft giúp chuyển dữ liệu lớn mà không cần mạng Internet.  

---

## **2. Azure Import/Export Service**
### **a. Tổng quan**
Azure Import/Export cho phép bạn **sao chép dữ liệu từ ổ đĩa cứng** trực tiếp vào **Azure Blob Storage hoặc Azure Files** mà không cần tải dữ liệu qua Internet.  

### **b. Khi nào nên sử dụng?**
✅ Khi cần chuyển **lượng dữ liệu lớn** nhưng mạng Internet không đủ nhanh.  
✅ Khi cần **sao lưu dữ liệu từ Azure về on-premises** (Export).  

### **c. Quy trình sử dụng Azure Import/Export**
1. **Chuẩn bị ổ đĩa cứng** (HDD hoặc SSD, tối đa 10 ổ/Job).  
2. **Sử dụng Microsoft Azure Import/Export Tool** để sao chép dữ liệu vào ổ đĩa.  
3. **Tạo Import Job trên Azure Portal** và gửi ổ đĩa đến trung tâm dữ liệu của Microsoft.  
4. **Microsoft sẽ upload dữ liệu vào Azure Storage** và thông báo khi hoàn tất.  
5. **Dữ liệu sẵn sàng trong Azure Storage Account** để sử dụng.  

🚀 **Ví dụ: Lệnh PowerShell để chuẩn bị ổ đĩa**  
```powershell
Initialize-Disk -Number 1 -PartitionStyle MBR
New-Partition -DiskNumber 1 -UseMaximumSize -AssignDriveLetter
Format-Volume -DriveLetter F -FileSystem NTFS -NewFileSystemLabel "AzureImport"
```

###  Lợi ích của Azure Import/Export
✅ Nhanh hơn so với upload qua mạng đối với dữ liệu lớn.  
✅ Bảo mật dữ liệu bằng mã hóa BitLocker.  
✅ Tiết kiệm chi phí cho dữ liệu lớn hơn 10TB.

