resource "aws_instance" "key" {
ami = "ami-005f9685cb30f234b"
instance_type = "t2.micro"
key_name = "vasi"
vpc_security_group_ids = [aws_security_group.sample-sg.id]
tags = {
Name = "prod-server"
Environment = "dev"
}
}
