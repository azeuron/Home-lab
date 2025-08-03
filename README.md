# Home Lab Hardware

## Current State

Currently I have an older desktop computer that is running Proxmox for VMs that is a temporary setup that I'm treating like my "test" environment.

I'm also using an old enterprise level laptop running Linux Mint as my primary machine for the home lab. Everything will be controlled from there.

The "server" equipment is connected through an 8 port gigabit switch. The laptop is connected via Wifi.

---

## Future State

There are significant hardware upgrades coming in the very near future

- 10 inch "mini" 8U rack setup to house the whole setup.
- Dedicated switch (gigabit or 2.5gb potentially).
- Patch Panel for cleaner cable management.
- 2x Refurbished Lenovo ThinkCentre  M920q Tiny Desktops as my homelab nodes. 
  - One will be running Proxmox for VMs and Containers exclusively. 
  - The other will have a eSATA expansion card in order to use an eSATA HDD enclosure to expand storage in order to build a few services including:
    - A media server running either Jellyfin or Plex.
    - A self-hosted file storage/management solution similar to Dropbox and the like.

---

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

4. **Plan and apply Terraform to provision VMs:**

   ```bash
   terraform plan
   terraform apply
   ```

5. **Run Ansible to configure VM:**
   
   ```bash
   ansible-playbook -i inventory playbook.yml
   ```

---

## Notes

***Security Notes***<br>
- Never commit your terraform.tfvars or private keys.

- The .gitignore file in this repo prevents accidental commits of sensitive data.

**Work In Progress**<br>
- Get Test Proxmox server online.

- Determine initial project to test process.

***Future Improvements***<br>
- Automatic SSH key injection via Cloud-Init

- Terraform → Ansible automation (post-provision hook)

- Expanded playbooks for complete application deployment

**Future Projects**<br>
- LLM AI stack built in a VM

- Jellyfin/Plex Server

- Cloud file storage application (self-hosted)

- Home Assistant for home automation featuring NodeRed scripting

- Hosted dashboard homepage with application and resource tracking utilizing services like Grafana to monitor individual system states real-time

**License**<br>
MIT License (coming soon)

Check back often for updates

Happy automating your home lab!
