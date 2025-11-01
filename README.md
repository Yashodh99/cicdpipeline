#  Spring Boot CI/CD Pipeline on AWS

## Overview
This project demonstrates a complete **Continuous Integration and Continuous Deployment (CI/CD)** pipeline for a **Spring Boot application** using **AWS developer tools**.  
The pipeline automates the build, test, containerization, and deployment process — from source code in GitHub to a live application running behind an AWS Load Balancer.

The implementation follows a real-world DevOps workflow integrating **Amazon ECR**, **CodeBuild**, and **ECS (Fargate)** to enable continuous delivery in a containerized environment.

---

##  Tech Stack
- **Spring Boot** — Backend service built with Java  
- **Docker** — Containerization of the Spring Boot app  
- **Amazon ECR (Elastic Container Registry)** — Image repository for storing Docker images  
- **AWS CodeBuild** — Builds and pushes the image to ECR automatically  
- **AWS ECS (Elastic Container Service)** — Deploys the containerized app to a managed cluster  
- **Application Load Balancer (ALB)** — Distributes incoming traffic across ECS tasks  
- **GitHub** — Source code repository integrated with AWS CodePipeline  
- **CodePipeline** — Automates the entire build → deploy workflow  

---

##  Features
- Fully automated build and deploy pipeline using AWS Developer Tools  
- Dockerized Spring Boot service hosted in Amazon ECS (Fargate)  
- Application accessible through a public **Load Balancer URL**  
- Integrated with GitHub for source-triggered builds  
- Uses a secure and modular `buildspec.yml` for AWS CodeBuild  
- Supports multiple availability zones and scaling via ECS service definition  

---

##  Pipeline Flow
1. **Code Commit (GitHub)** → Push changes to main branch  
2. **CodeBuild** → Automatically triggered, builds Docker image, and pushes to ECR  
3. **ECS Task Definition** → References the latest image from ECR  
4. **ECS Service Update** → Deploys new container version behind ALB  
5. **Load Balancer** → Routes traffic to the healthy ECS tasks  

---

