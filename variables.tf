variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "eu-west-1a"
}

variable "vpc_cidr" {
    description = "VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "Public Subnet"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
    description = "Private Subnet"
    default = "10.0.1.0/24"
}
