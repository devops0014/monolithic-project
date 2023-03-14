provider "aws" {
region = "ap-south-1"
access_key = "AKIARSPNELGYF6H52P3Z"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-09ba48996007c8b50"
instance_type = "t2.micro"
key_name = "my-project-kp"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
