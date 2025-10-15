resource "aws_instance" "terraform" {
  count = 2
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all.id]

  tags = {
    Name = var.ec2_tags[count.index]
    Terraform = "ture"
    project = "roboshop"
  }
}

resource "aws_security_group" "allow-all" {
  name        = "allow-all"
  

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all"
  }
}