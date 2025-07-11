# Scalable Web Application with ALB and Auto Scaling

## Overview
This project deploys a highly available, scalable EC2-based web application using AWS best practices. It includes Auto Scaling, Load Balancing, IAM roles, monitoring, and optional RDS for persistent data.

## Architecture Diagram
![Architecture Diagram](architecture-diagram.png)

## Key AWS Services
- EC2
- ALB (Application Load Balancer)
- Auto Scaling Group
- CloudWatch + SNS
- IAM
- (Optional) Amazon RDS MySQL (Multi-AZ)

## Features
- Traffic is distributed via ALB.
- ASG automatically scales EC2 instances.
- EC2 instances have IAM roles for secure access.
- Logs and alarms set up in CloudWatch with SNS notifications.

## User Data Script
```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Deployed via Auto Scaling</h1>" > /var/www/html/index.html
