terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00c257e12d6828491"
  instance_type = "t2.micro"
  key_name      = "iac-alexandre"
  # user_data     = <<-EOF
  #                 #!/bin/bash
  #                       cd /home/ubuntu
  #                       echo "<h1>Feito no Terraform</h1>" > index.html
  #                       nohup busybox httpd -f -p 8090 &
  #                 EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}
