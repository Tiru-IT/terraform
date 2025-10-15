resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "dev" ? "t3.small" : "t3.micro" 
  vpc_security_group_ids = [aws_security_group.allow-all.id]

  tags = {
    Name = "terraform"
    Terraform = "ture"
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