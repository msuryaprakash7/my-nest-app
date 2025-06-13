# NestJS App - CI/CD Deployment with GitHub Actions, EC2, Docker & SSL

This repository contains a backend-only **NestJS** application that is automatically deployed to an **AWS EC2 instance** using **GitHub Actions**. The app is containerized with **Docker** and served securely over **HTTPS** using **Nginx with SSL**.

---

## 🔧 Tech Stack

- **Backend**: NestJS
- **CI/CD**: GitHub Actions
- **Deployment Target**: AWS EC2 (Free Tier)
- **Containerization**: Docker
- **Reverse Proxy + SSL**: Nginx + Certbot (Let's Encrypt)

---

## 🚀 Deployment Architecture

```bash
 GitHub Push
     │
     ▼
GitHub Actions Workflow
     │
     ├── SSH into EC2
     ├── Pull latest code
     ├── Build Docker image
     ├── Run new container
     └── Restart via Nginx
     ▼
EC2 Instance
     ├── Dockerized NestJS app (on port 3000)
     └── Nginx (on port 443) -> SSL termination
