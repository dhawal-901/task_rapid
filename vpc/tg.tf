resource "aws_lb_target_group" "my_target_group" {
  name     = local.Environment.target_group_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id
}

resource "aws_lb_target_group_attachment" "my_target_group_attachment" {
  for_each = {
    for k, v in aws_instance.my_private_instance :
    k => v
  }
  target_group_arn = aws_lb_target_group.my_target_group.arn
  target_id        = each.value.id
  port             = 80
}
