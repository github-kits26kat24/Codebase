output "ec2_public_ip" {
  value = aws_instance.kay_node.public_ip
}