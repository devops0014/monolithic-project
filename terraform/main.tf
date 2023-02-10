provider "aws" {
region = "us-east-1"
access_key = "AKIAVVLQPHYLWYSIRYOG"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
key_name = "mykey"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
