# Variable to define AWS region for Virtual private cloud
variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "eu-west-1"
}

# Variable to define AWS Virtual Private cloud
variable "vpc_cidr" {
    description = "VPC"
    default = "10.0.0.0/16"
}
