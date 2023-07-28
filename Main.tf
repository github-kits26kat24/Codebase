resource "aws_instance" "Marketing_Node" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  # count         = var.env == "dev" ? 1 : 0
  user_data = <<EOF
  #¡/bin/bash
  sudo yum update
  sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
  EOF

  tags = var.dev_default_tags
}
resource "aws_instance" "Finance_Node" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  # count         = var.env == "sit" ? 1 : 0
  user_data = <<EOF
  #¡/bin/bash
  sudo yum update
  sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
  EOF

  tags = var.sit_default_tags_1
}

resource "aws_instance" "Legal_Node" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  # count         = var.env == "sit" ? 1 : 0
  user_data = <<EOF
  #¡/bin/bash
  sudo yum update
  sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
  EOF

  tags = var.sit_default_tags_2
}
