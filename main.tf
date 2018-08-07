provider "aws" {
  region = "eu-west-1"
}

# create an aws ami
resource "aws_instance" "manvir_homework_instance" {
  ami = "ami-073af6db5a9c278a6"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.manvir_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.MANVIR_SEC_GROUP.id}"]
  tags {
    Name = "Manvir_Homework"
  }
}

# Variable to define AWS Virtual Private cloud
resource "aws_vpc" "Manvir_VPC" {
    cidr_block = "10.0.0.0/16"
    tags {
    Name = "Manvir_VPC"
  }
}

# Create aws instance_type
resource "aws_subnet" "manvir_subnet" {
  vpc_id = "${aws_vpc.Manvir_VPC.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "eu-west-1a"
  tags {
    Name = "manvir_subnet"
  }
}


# Create a security group
resource "aws_security_group" "MANVIR_SEC_GROUP" {
  name        = "MANVIR_SEC_GROUP"
  description = "MANVIR_SEC"
  vpc_id      = "${aws_vpc.Manvir_VPC.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1" # -1 not restricted.
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
