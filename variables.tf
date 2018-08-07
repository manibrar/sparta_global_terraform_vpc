variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "name" {
  default = "Manvir-app"
}

variable "ami" {
  default = "ami-0ed6d2cf262648c7d"
}
