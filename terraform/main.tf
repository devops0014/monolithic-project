provider "aws" {
region = "us-east-1"
access_key = "AKIARSPNELGYJ5XSHLNM"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
key_name = "mykeypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
