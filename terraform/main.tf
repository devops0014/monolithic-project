provider "aws" {
region = "ap-south-1"
access_key = "AKIASWA47RVULZUG7FHT"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
key_name = "nwkpp"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
