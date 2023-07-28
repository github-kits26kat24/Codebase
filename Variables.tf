
variable "ec2_ami" {
  description = "This is a variable to manage ec2 AMI type"
  type        = string
  default     = "ami-04f7efe62f419d9f5"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "Kitskat2023"
}

variable "sg_name" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "kay_sg"
}

# variable "count" {
#   description = "This is a variable to manage ec2 key name"
#   type        = map(any)
#   default = {
#     "dev_count"      = "var.env == "dev" ? 1 : 0"
#     "sit_count_1"    = "var.env == "sit" ? 1 : 0"
#     "sit_count_2"    = "var.env == "dev" ? 1 : 0"
#   }
# }

variable "ec2_dev_public_ip" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Marketing_Node.public_ip"
}

variable "ec2_sit_public_ip_1" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Finance_Node.public_ip"
}

variable "ec2_sit_public_ip_2" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Legal_Node.public_ip"
}

variable "dev_default_tags" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Development Environment"
    "Dept"        = "development"
    "can destroy" = "yes"
  }
}

variable "sit_default_tags_1" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Development Environment"
    "Dept"        = "development"
    "can destroy" = "yes"
  }
}

variable "sit_default_tags_2" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Development Environment"
    "Dept"        = "development"
    "can destroy" = "yes"
  }
}

variable "bucket" {}
variable "key" {}
variable "env" {}
