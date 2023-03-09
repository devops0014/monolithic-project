provider "aws" {
region = "ap-south-1"
access_key = "AKIARSPNELGYMJGZMFPD"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-09ba48996007c8b50"
instance_type = "t2.micro"
key_name = "mykeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
