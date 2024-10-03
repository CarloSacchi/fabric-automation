# Fabric Automation

This repository contains Terraform configurations to automate the start and stop processes for Microsoft Fabric using Azure Automation Account and the Fabric API via `azapi_resource`.

## Overview

Microsoft Fabric is an all-in-one analytics solution for enterprises. This project aims to provide an automated solution for managing Fabric resources, focusing on start and stop operations. By leveraging Terraform, Azure Automation Account, and the Fabric API, we can efficiently manage these processes, potentially reducing costs and improving resource utilization.

## Features

- Automated start and stop of Microsoft Fabric resources
- Utilizes Azure Automation Account for scheduling and execution
- Implements Terraform for infrastructure as code
- Leverages Fabric API (via `azapi_resource`) for Fabric-specific operations
- Modular structure for easy customization and expansion

## Prerequisites

- Azure subscription
- Terraform installed
- Azure CLI installed and configured
- Appropriate permissions to create and manage Azure resources

## Repository Structure

```
.
├── modules/
│   ├── automation_account/
│   ├── fabric_resources/
│   └── ...
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
└── README.md
```

## Getting Started

1. Clone the repository:

   ```
   git clone https://github.com/CarloSacchi/fabric-automation.git
   ```

2. Navigate to the project directory:

   ```
   cd fabric-automation
   ```

3. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in your specific values.

4. Initialize Terraform:

   ```
   terraform init
   ```

5. Review the planned changes:

   ```
   terraform plan
   ```

6. Apply the Terraform configuration:
   ```
   terraform apply
   ```

## Configuration

Adjust the variables in `terraform.tfvars` to customize the deployment for your environment. Key variables include:

- `automation_account_name`: Name of the Azure Automation Account
- `resource_group_name`: Target Resource Group for deployments
- `fabric_workspace_id`: ID of your Microsoft Fabric workspace

## Modules

This project uses Terraform modules to organize and encapsulate groups of resources. The main modules are:

- `automation_account`: Sets up the Azure Automation Account
- `fabric_resources`: Manages Fabric resources using `azapi_resource`

Refer to each module's README for specific usage instructions.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

This project is not officially associated with Microsoft or Azure. Use at your own risk.

## Support

For issues, questions, or contributions, please open an issue in the GitHub repository.
