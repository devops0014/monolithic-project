provider "aws" {
region = "us-east-1"
access_key = "AKIAVVLQPHYLWYSIRYOG"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = ""
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
