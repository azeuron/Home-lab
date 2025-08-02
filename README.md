# Home Lab Infrastructure as Code (IaC)

## Overview

This project automates provisioning and configuration of virtual machines on a Proxmox home lab using:

- **Terraform**: For VM provisioning and lifecycle management
- **Ansible**: For post-deployment configuration management

---

## Project Structure

terraform-proxmox/
├── main.tf            # Terraform configuration
├── variables.tf       # Input variable definitions
├── terraform.tfvars   # Local variable values (not committed)
├── playbook.yml       # Ansible playbook for VM configuration
├── inventory          # Ansible inventory file with VM hosts
├── .gitignore         # Files to exclude from Git
└── README.md          # Project documentation


---

## Prerequisites

- A Proxmox server with API token configured
- Local machine with:
  - Terraform
  - Ansible
  - SSH key access to the target VM

---

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/azeuron/home-lab.git
   cd homelab-iac'''

2. Create and edit terraform.tfvars:

Define your Proxmox host, token, and VM settings.
⚠️ This file is ignored by Git to protect secrets.

3. Initialize Terraform:
   '''bash
   terraform init'''

4. Plan and apply Terraform to provision VMs:
   '''bash
   terraform plan
   terraform apply'''

5. Run Ansible to configure VM:
   '''bash
   ansible-playbook -i inventory playbook.yml'''

