provider "aws" {
region = "ap-south-1"
access_key = "AKIASWA47RVUNDBINTU7"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-09ba48996007c8b50"
instance_type = "t2.micro"
key_name = "nwkpp"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
