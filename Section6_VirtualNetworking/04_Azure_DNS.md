# **Azure DNS - Tổng quan**

## **1. Azure DNS là gì?**
Azure DNS là một dịch vụ lưu trữ miền (Domain Name System) của Microsoft Azure, giúp quản lý và phân giải tên miền mà không cần chạy máy chủ DNS riêng.

### **Chức năng chính:**
- Lưu trữ và quản lý bản ghi DNS trên Azure.
- Hỗ trợ **Public DNS** (tên miền công khai) và **Private DNS** (tên miền nội bộ).
- Tích hợp với Azure Resource Manager, API, PowerShell, CLI để quản lý tự động.

---

## **2. Các loại Azure DNS**
### ✅ **Public DNS Zone**
- Lưu trữ bản ghi DNS cho tên miền công khai trên Internet.
- Ví dụ: `example.com` trỏ đến IP của Azure VM hoặc Load Balancer.

### ✅ **Private DNS Zone**
- Dùng để phân giải tên miền trong nội bộ Azure.
- Giúp dịch vụ nội bộ Azure (VM, container, apps) giao tiếp với nhau qua tên miền thay vì IP.

---

## **3. Các bản ghi DNS hỗ trợ**
| Loại bản ghi | Chức năng |
|-------------|----------|
| **A**       | Trỏ tên miền đến địa chỉ IPv4. |
| **AAAA**    | Trỏ tên miền đến địa chỉ IPv6. |
| **CNAME**   | Alias (bí danh) cho một tên miền khác. |
| **MX**      | Xác định mail server nhận email. |
| **TXT**     | Lưu trữ văn bản (SPF, DKIM, DMARC). |
| **NS**      | Chỉ định máy chủ DNS quản lý tên miền. |
| **SRV**     | Xác định dịch vụ trên một port cụ thể. |

---

## **4. Cách hoạt động của Azure DNS**
1. Người dùng nhập URL vào trình duyệt (VD: `example.com`).
2. Trình duyệt gửi truy vấn đến máy chủ DNS.
3. Máy chủ Azure DNS kiểm tra bản ghi và trả về địa chỉ IP tương ứng.
4. Trình duyệt kết nối đến địa chỉ IP đó để tải trang web.

---

## **5. Lợi ích của Azure DNS**
✔ **Hiệu suất cao:** Hạ tầng toàn cầu, độ trễ thấp.  
✔ **Bảo mật tốt:** Hỗ trợ **DNSSEC**, quyền truy cập dựa trên **RBAC**.  
✔ **Dễ quản lý:** Tích hợp với Azure Portal, CLI, API.  
✔ **Tự động mở rộng:** Đáp ứng lưu lượng truy vấn lớn mà không cần quản lý hạ tầng.  

---

## **6. Tổng kết**
- Azure DNS giúp lưu trữ và quản lý DNS mà không cần server riêng.
- Hỗ trợ **Public DNS Zone** (Internet) và **Private DNS Zone** (nội bộ Azure).
- Cung cấp đầy đủ các bản ghi DNS phổ biến.
- Tích hợp chặt chẽ với Azure, đảm bảo hiệu suất và bảo mật.

---