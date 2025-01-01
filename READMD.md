# AWS Auto Scaling Group with Terraform

## Project Overview
This project demonstrates the creation of an **Auto Scaling Group (ASG)** in AWS using **Terraform**. The ASG dynamically adjusts the number of EC2 instances based on demand, ensuring scalability and high availability for your application. 

The setup includes:
- A **Launch Configuration** to define the instance template.
- An **Auto Scaling Group** for scaling instances.
- Flexible instance scaling parameters (minimum, maximum, desired capacity).

---

## Features
- **Dynamic Scalability:** Automatically adjusts the number of EC2 instances based on application load.
- **Customizable Configurations:** Parameterized configurations for easy adjustments.
- **Cost Optimization:** Scales down during low traffic, saving costs.

---

## Prerequisites
Ensure the following tools are installed on your EC2 instance or local machine:
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI (configured with necessary credentials and access)
- Basic knowledge of AWS and Terraform

---

## Project Structure
The repository contains the following files:
```plaintext
.
├── main.tf         # Core Terraform configuration
├── variables.tf    # Input variable definitions
├── outputs.tf      # Outputs configuration
├── .gitignore      # Ignores sensitive and unwanted files (e.g., terraform.tfstate)

Setup and Execution:
--------------------
1. Clone the Repository
------------------------
    git clone https://github.com/Madhu-123-bot/TEST-TASK-8.git
    cd TEST-TASK-8

2.Initialize Terraform
-----------------------
Run the following command to initialize the Terraform environment:

    terraform init

3.Review the Plan
------------------
Generate and review the execution plan:

    terraform plan

4.Apply the Configuration
--------------------------
Apply the configuration to create the resources:

    terraform apply

Type yes when prompted to confirm.

5.Verify the Setup
-------------------
Go to the AWS Management Console > Auto Scaling Groups to ensure your ASG is created and active.

6.Cleanup
----------
To avoid incurring unnecessary costs, destroy the resources created by Terraform:

    terraform destroy

Type yes when prompted.

7.Outputs:
----------
Once the resources are created, Terraform provides the following output:

ASG Name: Name of the Auto Scaling Group created.

8. .gitignore:
--------------
Sensitive or unwanted files, such as terraform.tfstate, are excluded from version control:

    terraform.tfstate
    terraform.tfstate.backup
    .terraform/
    .terraform.lock.hcl

9.Future Enhancements:
-----------------------

Integrate scaling policies based on metrics like CPU utilization.
Add a Load Balancer for traffic distribution across instances.
Automate infrastructure deployment using CI/CD pipelines.
