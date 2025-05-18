# Odoo 17 on Render

This project sets up Odoo 17 using Docker on [Render](https://render.com). It includes a Dockerfile, `requirements.txt`, and a minimal `odoo.conf`.

## Features

- Dockerfile for Odoo 17
- Python dependency management
- Minimal setup ready for deployment
- Easily customizable and extendable

---

## How to Deploy

### 1. Upload to GitHub

- Clone or upload this repo to your GitHub account.

### 2. Create a Web Service on Render

- Go to [Render](https://render.com)
- Click **“New > Web Service”**
- Select your GitHub repo
- Render will detect the Dockerfile automatically
- Set port to **8069**

---

## Default Configuration

- Access Odoo at your Render app URL.
- Default admin password: `admin` (set in `odoo.conf`)
- Customize modules in `/addons/`

---

## Requirements

Check `requirements.txt` for all Python dependencies.

---

## Notes

- Use Render PostgreSQL service or connect your own.
- You may add environment variables for DB config.
- Production deployment should use persistent DB volumes.

---

## Credits

Developed by [Your Name]  
Powered by [Odoo](https://www.odoo.com)
