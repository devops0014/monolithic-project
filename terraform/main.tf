provider "aws" {
region = "ap-south-1"
access_key = "AKIASWA47RVUB2CJGJE4"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-09ba48996007c8b50"
instance_type = "t2.micro"
key_name = "jenkins-kp"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
