provider "aws" {
region = "us-east-1"
access_key = "AKIAVVLQPHYLVC2UMD4H"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
key_name = "mykey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
