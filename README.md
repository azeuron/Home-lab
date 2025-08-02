# Home Lab Infrastructure as Code (IaC)

## Overview

This project automates provisioning and configuration of virtual machines on a Proxmox home lab using:

- **Terraform**: For VM provisioning and lifecycle management
- **Ansible**: For post-deployment configuration management

---

## Project Structure

terraform-proxmox/  <br>
├── main.tf            # Terraform configuration  <br>
├── variables.tf       # Input variable definitions  <br>
├── terraform.tfvars   # Local variable values (not committed)  <br>
├── playbook.yml       # Ansible playbook for VM configuration  <br>
├── inventory          # Ansible inventory file with VM hosts  <br>
├── .gitignore         # Files to exclude from Git  <br>
└── README.md          # Project documentation  <br>


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
   cd home-lab
   ```

2. **Create and edit terraform.tfvars:**

Define your Proxmox host, token, and VM settings.
⚠️ This file is ignored by Git to protect secrets.

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. Plan and apply Terraform to provision VMs:
   ```bash
   terraform plan
   terraform apply
   ```

5. Run Ansible to configure VM:
   ```bash
   ansible-playbook -i inventory playbook.yml
   ```

***Security Notes***
Never commit your terraform.tfvars or private keys.

The .gitignore file in this repo prevents accidental commits of sensitive data.

***Future Improvements***
Automatic SSH key injection via Cloud-Init

Terraform → Ansible automation (post-provision hook)

Expanded playbooks for complete application deployment

License
MIT License (coming soon)

Happy automating your home lab!
