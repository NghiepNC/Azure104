# **Azure Firewall - Tổng quan**

## **1. Azure Firewall là gì?**
Azure Firewall là một dịch vụ tường lửa đám mây do Microsoft cung cấp, giúp bảo vệ và kiểm soát lưu lượng mạng vào/ra trên Azure.  
- Cung cấp bảo mật mạng cấp doanh nghiệp với tính năng lọc lưu lượng dựa trên quy tắc.  
- Hỗ trợ kiểm tra trạng thái (stateful inspection) và tích hợp với các dịch vụ bảo mật Azure khác.

---

## **2. Các tính năng chính của Azure Firewall**
### ✅ **Lọc lưu lượng dựa trên quy tắc**  
- Hỗ trợ ba loại quy tắc:  
  - **Application Rules:** Kiểm soát truy cập theo FQDN (Fully Qualified Domain Name).  
  - **Network Rules:** Cho phép/Chặn lưu lượng dựa trên IP, cổng và giao thức.  
  - **NAT Rules:** Chuyển tiếp lưu lượng từ bên ngoài vào tài nguyên nội bộ.  

### ✅ **Kiểm tra trạng thái (Stateful Inspection)**  
- Duy trì trạng thái kết nối mạng để kiểm soát lưu lượng tốt hơn.  

### ✅ **Bảo vệ mối đe dọa nâng cao**  
- Tích hợp với **Microsoft Threat Intelligence** để chặn IP độc hại theo thời gian thực.  

### ✅ **Hỗ trợ các giao thức chính**  
- TCP, UDP, ICMP, DNS, HTTP/S, FTP, SSH.  

### ✅ **Tích hợp với Azure Monitor & Log Analytics**  
- Ghi lại logs và metrics giúp giám sát lưu lượng mạng.  

---

## **3. Các chế độ triển khai**
### 🔹 **Azure Firewall Standard**  
- Hỗ trợ lọc lưu lượng mạng cơ bản.  
- Tích hợp với Threat Intelligence nhưng không có tính năng IDS/IPS.  

### 🔹 **Azure Firewall Premium**  
- Bổ sung tính năng **Intrusion Detection & Prevention System (IDPS)**.  
- Hỗ trợ lọc TLS/SSL.  
- Chặn các URL cụ thể thay vì toàn bộ tên miền.  

---

## **4. Cách hoạt động của Azure Firewall**
1. Khi lưu lượng mạng đến Azure Firewall, nó kiểm tra các quy tắc đã thiết lập.  
2. Nếu lưu lượng khớp với một quy tắc **cho phép**, nó sẽ được chuyển tiếp.  
3. Nếu lưu lượng không khớp với bất kỳ quy tắc nào, nó sẽ bị từ chối.  
4. Logs và metrics sẽ ghi lại tất cả hoạt động để giám sát.  

---

## **5. So sánh Azure Firewall với các giải pháp khác**
| Tính năng              | Azure Firewall         | NSG (Network Security Group) | Azure WAF (Web Application Firewall) |
|------------------------|-----------------------|-----------------------------|-------------------------------------|
| **Lọc lưu lượng cấp ứng dụng** | ✅ (Application Rules) | ❌ | ✅ |
| **Lọc lưu lượng cấp mạng** | ✅ (Network Rules) | ✅ | ❌ |
| **Hỗ trợ NAT** | ✅ | ❌ | ❌ |
| **Tích hợp Threat Intelligence** | ✅ | ❌ | ✅ |
| **Hỗ trợ TLS Inspection** | ✅ (Premium) | ❌ | ✅ |

---

## **6. Khi nào nên sử dụng Azure Firewall?**
- Khi cần kiểm soát lưu lượng vào/ra theo domain, IP, cổng.  
- Khi cần bảo vệ tài nguyên Azure khỏi các mối đe dọa bên ngoài.  
- Khi muốn thay thế tường lửa truyền thống bằng một giải pháp đám mây.  
- Khi muốn giám sát lưu lượng mạng chi tiết bằng Azure Monitor.  

---

## **7. Tổng kết**
- **Azure Firewall** là dịch vụ tường lửa đám mây bảo vệ lưu lượng mạng Azure.  
- Hỗ trợ lọc lưu lượng theo **Application Rules**, **Network Rules**, và **NAT Rules**.  
- Tích hợp với **Threat Intelligence** để chặn IP độc hại.  
- Có hai phiên bản: **Standard** và **Premium** với tính năng nâng cao hơn.  
- Giúp tăng cường bảo mật mạng và dễ dàng quản lý với Azure Monitor.  

---
