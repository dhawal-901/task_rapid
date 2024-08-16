resource "aws_lb" "my_lb" {
  name               = local.Environment.lb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.my_public_sg.id]
  subnets            = module.vpc.public_subnets

  enable_deletion_protection = true
  
  tags = {
    Environment = terraform.workspace
  }
}