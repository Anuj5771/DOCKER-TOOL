provider "aws" {
  region = "us-east-2"
}

# Networking module ko call karna
module "networking" {
  source             = "./networking"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

# Compute module ko call karna
module "compute" {
  source         = "./compute"
  vpc_id         = module.networking.vpc_id
  public_subnet  = module.networking.public_subnet_id
  private_subnet = module.networking.private_subnet_id
}

