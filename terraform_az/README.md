# Azure Linux VM Infrastructure with Terraform

Repository này chứa mã Terraform để triển khai cơ sở hạ tầng Azure Linux VM với các tính năng sau:

## 🚀 Tính năng

- Ubuntu 18.04 LTS Virtual Machine
- Data Disk 1023GB (Standard SSD)
- Network Security Group với rule SSH (port 22)
- Public IP với DNS name
- Boot diagnostics với Storage Account
- Standard SSD cho OS disk
- Resource tagging
- Multi-environment support (dev, staging, prod)

## 📁 Cấu trúc thư mục

```
terraform_az/
├── modules/
│   └── vm/                    # Module chính cho VM
│       ├── main.tf            # Resource definitions
│       ├── variables.tf       # Input variables
│       └── outputs.tf         # Output values
└── environments/
    └── dev/                   # Môi trường development
        ├── main.tf            # Module instantiation
        ├── variables.tf       # Environment variables
        ├── outputs.tf         # Environment outputs
        └── terraform.tfvars   # Variable values
```

## 🛠️ Yêu cầu

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure subscription

## 🔧 Cài đặt

1. Clone repository:
```bash
git clone <repository-url>
cd terraform_az
```

2. Đăng nhập vào Azure:
```bash
az login
```

3. Chọn subscription:
```bash
az account set --subscription "<subscription-id>"
```

## 🚀 Triển khai

1. Di chuyển vào thư mục môi trường:
```bash
cd environments/dev
```

2. Khởi tạo Terraform:
```bash
terraform init
```

3. Xem trước các thay đổi:
```bash
terraform plan
```

4. Triển khai infrastructure:
```bash
terraform apply
```

## ⚙️ Cấu hình

### Variables

Các biến chính có thể cấu hình trong `terraform.tfvars`:

```hcl
environment        = "dev"
location           = "eastus"
resource_group_name = "rg-vm-demo-001"
vm_name            = "vm-demo-001"
admin_username     = "azureuser"
admin_password     = "your-secure-password"  # Thay đổi trong môi trường production
vm_size            = "Standard_B2s"
os_version         = "18.04-LTS"
```

### Tags

Mặc định, các resource sẽ được gắn các tag sau:

```hcl
tags = {
  Environment = "Development"
  Project     = "VM Demo"
  ManagedBy   = "Terraform"
  Owner       = "DevOps Team"
  CostCenter  = "IT"
}
```

### Outputs

Sau khi triển khai, bạn có thể xem các thông tin quan trọng:

```bash
terraform output
```

Các output chính bao gồm:
- VM ID và tên
- Public và Private IP
- DNS name
- Resource Group name
- VNet và Subnet thông tin
- NSG thông tin
- Data Disk thông tin
- Storage Account thông tin

## 🔒 Bảo mật

- **Mật khẩu**: 
  - Trong môi trường production, sử dụng Azure Key Vault
  - Không lưu trữ mật khẩu trong code
  - Sử dụng mật khẩu mạnh và thay đổi định kỳ

- **Network Security**:
  - NSG chỉ mở port 22 cho SSH
  - Cân nhắc sử dụng Azure Bastion
  - Giới hạn source IP trong NSG rules

- **Access Control**:
  - Sử dụng Azure RBAC
  - Áp dụng principle of least privilege
  - Enable encryption cho tất cả resources

## 🧹 Dọn dẹp

Để xóa toàn bộ infrastructure:

```bash
terraform destroy
```

## 📝 Best Practices

1. **Version Control**:
   - Sử dụng Git để quản lý code
   - Không commit file chứa thông tin nhạy cảm
   - Sử dụng `.gitignore` để loại trừ các file không cần thiết

2. **State Management**:
   - Sử dụng remote state (Azure Storage Account)
   - Bật state locking
   - Backup state file thường xuyên

3. **Security**:
   - Sử dụng Azure Key Vault cho secrets
   - Enable encryption cho tất cả resources
   - Regular security updates

4. **Cost Management**:
   - Sử dụng tags để theo dõi chi phí
   - Tắt resources khi không sử dụng
   - Chọn đúng kích thước VM
   - Monitor resource usage

## 🤝 Contributing

1. Fork repository
2. Tạo feature branch
3. Commit changes
4. Push to branch
5. Tạo Pull Request

## 📄 License

MIT License - Xem file [LICENSE](LICENSE) để biết thêm chi tiết. 