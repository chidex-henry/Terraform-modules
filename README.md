# Terraform AWS Infrastructure Modules

This project comprises Terraform modules for provisioning various AWS resources and facilitating infrastructure deployment and management. The modules are organized to promote reusability, scalability, and consistency in resource configurations.

## Overview

Terraform modules encapsulate sets of related AWS resources within directories containing `.tf` or `.tf.json` files. These modules serve as containers for configuring and provisioning infrastructure elements, enhancing automation and maintainability.

### Root Modules and Child Modules

- **Root Module**: The root module constitutes the primary directory containing Terraform configuration files. It orchestrates the deployment of child modules and specifies their configurations.
  
- **Child Modules**: Child modules are nested within the root module or other child modules. They represent cohesive sets of resources designed for specific functionalities or components within the AWS environment.

## Development Process

1. **GitHub Repository Setup**: Established a GitHub repository to store Terraform infrastructure configurations. Changes were managed locally and pushed to the remote repository for collaboration and version control.

2. **IAM User Creation**: Created an IAM user, 'Terraform-user', with programmatic access. This user's credentials enable Terraform to provision resources in the AWS environment. The user was granted the 'AdministratorAccess' permission policy for resource creation.

3. **AWS Profile Configuration**: Configured a named profile ('terraform-user') for the IAM user to facilitate authentication with the AWS environment.

4. **Terraform State Management**:
   - Created an S3 bucket ('chidex-terraform-remote-state1') to store the Terraform state file ('terraform.tfstate').
   - Launched a DynamoDB table ('terraform-state-lock') to lock the state file, preventing concurrent modifications.

5. **AWS Resource Provisioning**: Developed Terraform modules for core AWS services, including but not limited to:
   - Virtual Private Cloud (VPC) with public and private subnets across multiple availability zones.
   - Internet Gateway for external connectivity.
   - Security Groups for network firewall rules.
   - Elastic Compute Cloud (EC2) instances managed by Auto Scaling Groups.
   - Amazon ECS Cluster, Task Definition, and Service for containerized application deployment.
   - Application Load Balancer for distributing web traffic.
   - Certificate Manager for securing application communication.
   - Route 53 for domain name registration and DNS management.
   - Simple Notification Service (SNS) for alerting within the Auto Scaling Group.

## Challenges and Solutions

- **Resource Configuration**: Building and compiling resource arguments and attributes posed challenges. The approach involved referencing AWS Management Console configurations alongside Terraform documentation. By aligning service configurations between the console and Terraform modules, accurate resource definitions were achieved.

## Conclusion

These Terraform modules streamline the provisioning and management of AWS infrastructure, offering flexibility, scalability, and consistency in resource deployment. By adhering to modular design principles, infrastructure configurations remain organized, reusable, and easily maintainable, promoting efficient DevOps practices.
