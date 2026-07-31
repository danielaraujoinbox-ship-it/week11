resource "aws_security_group" "web-sg" {
  name        = "web-sg"
  description = "Allow HTTP traffic"

  ingress {
    description = "Allow HTTP"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/24"]
  }
}
