#!/bin/bash
# Update the system
yum update -y

# Install Apache web server
yum install -y httpd

# Enable and start Apache
systemctl enable httpd
systemctl start httpd

# Create a sample index.html
echo "<html>
  <head>
    <title>Scalable Web App</title>
  </head>
  <body>
    <h1>Deployed via Auto Scaling Group and ALB</h1>
    <p>This is a sample EC2 instance running Amazon Linux 2 with Apache.</p>
  </body>
</html>" > /var/www/html/index.html
