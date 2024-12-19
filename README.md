# Infrastructure Automation and Deployment with Terraform and Ansible


 ## Overview


## This project demonstrates the creation and configuration of a complete infrastructure using Terraform and Ansible. The setup includes:


#### A Virtual Private Cloud (VPC)


Security groups


Multiple hosts for different purposes (Bastion, Application, Docker Host)


The project also installs and configures Docker, deploys an Nginx container, and verifies the setup.


Steps Involved


# Infrastructure Setup with Terraform


## Terraform automates the creation of the following resources:


VPC: A private network to host all resources securely.


Security Groups: Custom rules to control inbound and outbound traffic.


Bastion Host: A secure host for accessing private resources using SSH.


Application Host: A dedicated host for running the application.


Docker Host: A host configured to run Docker containers.


# Configuration and Deployment with Ansible


## Ansible is used for configuration and application deployment:


### Docker Installation:


Installs Docker on the Docker host.


Ensures Docker is properly configured and running.


#### Nginx Setup:


Creates an Nginx Docker image.


Runs an Nginx container from the created image.


# Verification


## After deployment, verify the setup as follows:


SSH into the private Docker host using the Bastion host.


Check the running Nginx container on the Docker host to ensure it's functioning correctly.


Usage Instructions


Prerequisites


Terraform installed on your local machine.


Ansible installed on your local machine.


AWS credentials configured for Terraform and Ansible access.


Terraform Deployment


# Navigate to the Terraform directory:


cd terraform


Initialize Terraform


terraform init


Plan the infrastructure


terraform plan


## Apply the Terraform configuration to create resources:


terraform apply


Note the output values for accessing the Bastion and Docker hosts.


Ansible Deployment


# Navigate to the Ansible directory:


cd ansible


 Update the inventory file with the IP addresses of the Bastion and Docker hosts.


## Test Ansible connectivity:


ansible all -m ping


# Run the playbook to install Docker:


ansible-playbook - i aws.ec2.yml  test.yml


# Deploy Nginx using the playbook:


ansible-playbook deploy_nginx.yml



# SSH into the Bastion host:


ssh -i <private_key.pem> ubuntu@<bastion_host_ip>


From the Bastion host, SSH into the Docker host:


ssh -i <private_key.pem> ubuntu@<docker_host_ip>


# Check the running Docker containers:

docker ps

# Verify Nginx is accessible by visiting the Docker host's public IP in a browser or using curl:

curl http://<docker_host_ip>

# Project Title

## Author

**Anuj Yadav**  

Email: anujpbh2022@gmail.com
GitHub: [@yourgithub](https://github.com/Anuj5771/DOCKER-TOOL)
