# Variable to define AWS Virtual Private cloud
resource "aws_vpc" "Manvir_VPC" {
    cidr_block = "10.0.0.0/16"
    tags {
    Name = "Manvir_VPC"
  }

}
