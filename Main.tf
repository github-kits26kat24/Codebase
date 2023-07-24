resource "aws_instance" "kay_node" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
#   subnet_id              = aws_subnet.Amazon_Linux_Main.id
#   vpc_security_group_ids = [aws_security_group.testcase_sg.id]
  user_data     = <<EOF
  #¡/bin/bash
  sudo yum update
  sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 git maven -y
  EOF

  tags = var.default_tags
}
