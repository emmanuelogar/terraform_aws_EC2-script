variable "ami" {
  type = string
  default = "ami-0123456789abcdef0" # Replace with actual AMI ID
}

variable "instance_type" {
  type = string
  default = "t2.micro" # Replace with desired instance type
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "harness-test-ec2"
  }
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
