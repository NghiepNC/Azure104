# 🌐 Azure Resource Manager (ARM)

## 📌 Giới Thiệu
**Azure Resource Manager (ARM)** là dịch vụ quản lý triển khai và quản trị tài nguyên trong Microsoft Azure. ARM cung cấp một cách tiếp cận thống nhất để quản lý tài nguyên thông qua **mẫu JSON (ARM Template)**, **Azure CLI**, **PowerShell**, **REST API**, và **Azure Portal**.

---

## 🚀 Lợi Ích Của Azure Resource Manager
✅ **Triển khai có tổ chức**: ARM cho phép nhóm các tài nguyên liên quan vào một **Resource Group**, giúp dễ dàng quản lý và theo dõi.  
✅ **Quản lý quyền truy cập**: Tích hợp với **Azure RBAC (Role-Based Access Control)** để kiểm soát quyền truy cập theo vai trò.  
✅ **Tự động hóa triển khai**: Sử dụng **ARM Template** để triển khai và cập nhật cơ sở hạ tầng nhanh chóng, có thể lặp lại.  
✅ **Theo dõi và kiểm soát**: Hỗ trợ **tagging**, **policy**, và **log** giúp quản lý tài nguyên hiệu quả.  
✅ **Đồng bộ hóa cấu hình**: Đảm bảo trạng thái tài nguyên luôn khớp với cấu hình mong muốn.

---

## 📜 Cấu Trúc Cơ Bản Của ARM Template
Một **ARM Template** là một tệp JSON mô tả hạ tầng Azure theo cấu trúc **declarative**. Dưới đây là ví dụ cơ bản để tạo một **Azure Storage Account**:

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "apiVersion": "2021-04-01",
      "name": "mystorageaccount",
      "location": "eastus",
      "sku": { "name": "Standard_LRS" },
      "kind": "StorageV2",
      "properties": {}
    }
  ]
}
```

📌 **Các thành phần chính trong ARM Template:**
- **`$schema`**: Xác định phiên bản schema của template.
- **`contentVersion`**: Phiên bản của template (tùy chỉnh).
- **`resources`**: Danh sách tài nguyên cần triển khai.
- **`type`**: Loại tài nguyên (VD: `Microsoft.Storage/storageAccounts`).
- **`apiVersion`**: Phiên bản API của tài nguyên.
- **`location`**: Khu vực triển khai tài nguyên.
- **`sku`**: Loại dịch vụ được chọn.

---

## 🛠 Triển Khai ARM Template
Bạn có thể triển khai **ARM Template** bằng nhiều cách:

### 1️⃣ **Sử dụng Azure CLI**
```sh
az deployment group create --resource-group MyResourceGroup --template-file template.json
```

### 2️⃣ **Sử dụng PowerShell**
```powershell
New-AzResourceGroupDeployment -ResourceGroupName MyResourceGroup -TemplateFile template.json
```

### 3️⃣ **Triển khai qua Azure Portal**
- Mở **Azure Portal** → Chọn **Deploy a custom template** → Upload tệp **template.json**.

---

## 🔑 Chính Sách & RBAC trong ARM
**Azure Policy** và **Role-Based Access Control (RBAC)** giúp kiểm soát và bảo mật tài nguyên:
- **Azure Policy**: Đảm bảo tài nguyên tuân theo các quy định (VD: chỉ cho phép triển khai tại khu vực `eastus`).
- **RBAC**: Gán quyền truy cập cụ thể cho từng nhóm người dùng.

Ví dụ cấp quyền **Reader** cho một user trên một Resource Group:
```sh
az role assignment create --assignee user@example.com --role Reader --resource-group MyResourceGroup
```

---

## 🔥 So Sánh ARM vs. Bicep vs. Terraform
| Công cụ  | Ngôn ngữ        | Dễ đọc | Quản lý trạng thái | Multi-Cloud |
|----------|----------------|--------|---------------------|-------------|
| ARM      | JSON           | ❌     | Không              | ❌          |
| Bicep    | DSL (Bicep)    | ✅     | Không              | ❌          |
| Terraform| HCL (HashiCorp)| ✅✅   | Có                 | ✅          |

📌 **Lưu ý:**
- **Bicep** là một ngôn ngữ thân thiện hơn của ARM, giúp viết template dễ dàng hơn.
- **Terraform** hỗ trợ **multi-cloud**, nhưng ARM/Bicep chỉ dành riêng cho Azure.

---

## 📚 Tài Liệu Tham Khảo
- 🔗 [Giới thiệu về Azure Resource Manager](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)
- 🔗 [Viết ARM Template](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/)
- 🔗 [Hướng dẫn Bicep](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/)

📢 Nếu có bất kỳ câu hỏi nào, hãy mở **Issue** hoặc **Pull Request** trong repo! 🚀
