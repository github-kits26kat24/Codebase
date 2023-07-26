# Creating A Subnet 
# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/subnet
resource "aws_subnet" "Dev_Ec2_Main_One" {
  vpc_id                  = aws_vpc.test4bcase_main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1a"
  tags = {
    Name = "Dev_1"
  }
}
resource "aws_subnet" "Dev_Ec2_Main_Two" {
  vpc_id                  = aws_vpc.test4bcase_main.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1b"
  tags = {
    Name = "Dev_2"
  }
}
resource "aws_subnet" "Sit_Ec2_Main" {
  vpc_id                  = aws_vpc.test4bcase_main.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1b"
  tags = {
    Name = "Sit_1"
  }
}