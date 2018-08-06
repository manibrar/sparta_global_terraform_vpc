resource "aws_instance" "manvir_app_instance" {
  ami = "ami-073af6db5a9c278a6"
  instance_type = "t2.micro"
  tags {
    Name = "app-manvir"
  }
}
