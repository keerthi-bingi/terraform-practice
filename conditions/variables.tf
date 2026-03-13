variable "environment" {
    description = "The environment to deploy the EC2 instance (dev, staging, prod)"
    type        = string
    default     = "prod"
}

variable "region" {
    default = "us-west-1"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  
}

variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string
  default     = "t3.micro"
  
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "var-terraform"
        Project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }
  
}

variable "sg_name" {
    default = "allow-all-terraform"
}

variable "sg_description" {
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
    type = number
    default = 0
}

variable "sg_to_port" {
    type = number
    default = 0
}

variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "allow-all-terraform-var"
        Project = "roboshop"
        Environment = "dev"
        Terraform = "true"
    }
  
}