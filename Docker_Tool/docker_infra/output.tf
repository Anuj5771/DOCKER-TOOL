output "bastion_public_ip" {
  value = aws_instance.public.public_ip
  description = "The public IP address of the bastion host."
}

# Output for Application Host Private IP
output "application_private_ip" {
  value = aws_instance.private1.private_ip
  description = "The private IP address of the application host."
}

# Output for Kafka Host Private IP
output "docker_private_ip" {
  value = aws_instance.private2.private_ip
  description = "The private IP address of the docker host."
}


