# **Virtual Networking trong Azure - Tóm tắt các điểm chính**

## **1. Khái niệm cơ bản**
- **Virtual Network (VNet):** Là một miền mạng logic trong Azure, giúp tạo ra môi trường mạng riêng biệt cho các tài nguyên (VM, App Service, v.v.).
- **Mục tiêu:** Tách biệt, bảo mật và quản lý lưu lượng mạng giữa các tài nguyên, cũng như kết nối đến Internet, on-premises hoặc các VNets khác.

## **2. Các thành phần chính của Virtual Networking**
### **a. Subnets**
- **Phân chia VNet:** Chia VNet thành các mạng con để quản lý địa chỉ IP và áp dụng chính sách bảo mật.
- **Quản lý lưu lượng:** Áp dụng NSG (Network Security Groups) và UDR (User Defined Routes) cho từng subnet.

### **b. Địa chỉ IP và CIDR**
- **Địa chỉ IP riêng:** Xác định phạm vi địa chỉ của VNet bằng định dạng CIDR (ví dụ: 10.0.0.0/16).
- **IP Public/Private:** Tài nguyên thường sử dụng private IP trong VNet, kết nối ra ngoài thông qua NAT gateway hoặc load balancer.

### **c. Network Security Groups (NSG)**
- **Kiểm soát lưu lượng:** Xác định các quy tắc inbound và outbound để bảo vệ và quản lý truy cập vào các subnet hoặc tài nguyên riêng lẻ.

### **d. Route Tables & User Defined Routes (UDR)**
- **Định tuyến lưu lượng:** Quản lý các tuyến đường mạng trong VNet, định hướng lưu lượng qua các thiết bị an ninh (ví dụ: firewall).

## **3. Kết nối và Mở rộng mạng**
### **a. VNet Peering**
- **Kết nối giữa VNets:** Cho phép kết nối trực tiếp và an toàn giữa các VNets, dù trong cùng region hay khác region, sử dụng backbone của Azure.

### **b. Kết nối đến on-premises**
- **VPN Gateway:**
  - **Site-to-Site VPN:** Kết nối mạng on-premises với VNet qua kết nối VPN an toàn qua Internet.
  - **Point-to-Site VPN:** Cho phép người dùng từ xa kết nối vào VNet thông qua VPN client.
- **ExpressRoute:**
  - **Kết nối riêng:** Tạo kết nối riêng giữa on-premises và Azure, đảm bảo hiệu suất cao và độ bảo mật tối ưu.

## **4. Các dịch vụ bảo mật và quản lý lưu lượng**
### **a. Azure Firewall**
- **Bảo vệ lưu lượng:** Dịch vụ tường lửa quản lý lưu lượng mạng giữa VNet và Internet, kiểm soát truy cập dựa trên ứng dụng và chính sách bảo mật.

### **b. Application Gateway**
- **Load balancing cấp 7:** Cung cấp cân bằng tải cho các ứng dụng web, hỗ trợ SSL termination và Web Application Firewall (WAF).

### **c. DDoS Protection**
- **Bảo vệ chống tấn công DDoS:** Giúp bảo vệ các tài nguyên trong VNet khỏi các cuộc tấn công từ chối dịch vụ.

## **5. Các thực hành bảo mật khi triển khai Virtual Networking**
- **Sử dụng NSG & UDR:** Kiểm soát và định tuyến lưu lượng mạng chặt chẽ cho từng subnet.
- **Kết hợp VPN Gateway/ExpressRoute:** Đảm bảo kết nối an toàn giữa Azure và on-premises.
- **Sử dụng Azure Firewall & DDoS Protection:** Tăng cường bảo mật lưu lượng và phòng chống tấn công.
- **Áp dụng VNet Peering một cách hợp lý:** Tối ưu hóa kết nối giữa các VNets mà không cần tạo VPN riêng biệt.

## **6. Tổng kết**
- **Virtual Networking** là nền tảng cho hạ tầng mạng trong Azure, cho phép tạo ra một môi trường an toàn, linh hoạt và dễ mở rộng.
- Hiểu rõ các thành phần như **VNet, subnets, NSG, UDR, VPN Gateway, ExpressRoute, VNet Peering** và các dịch vụ bảo mật đi kèm là chìa khóa để triển khai và quản lý hạ tầng mạng hiệu quả trong Azure.
