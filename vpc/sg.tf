resource "aws_security_group" "my_public_sg" {
  vpc_id      = module.vpc.vpc_id
  name        = local.Environment.lb_sg_name
  description = "Allow 80, 443 only"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = local.Environment.lb_sg_name
  }
}

resource "aws_security_group" "my_public_sg_2" {
  vpc_id      = module.vpc.vpc_id
  name        = local.Environment.instance_sg_name
  description = "Allow 22 only"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = local.Environment.instance_sg_name
  }
}