# resource "aws_efs_file_system" "efs" {
#   creation_token = "EFS Shared Data"
#   encrypted      = true
#   tags = {
#     Name = "EFS Shared Data"
#   }
# }



# resource "aws_efs_mount_target" "mount_targets" {
#   count           = 2
#   file_system_id  = aws_efs_file_system.efs_file_system.id
#   subnet_id       = module.vpc.public_subnets[count.index]
#   security_groups = [aws_security_group.aws-sg-efs.id]
# }

# resource "aws_efs_mount_target" "efs-target0" {
#   file_system_id  = aws_efs_file_system.efs.id
#   subnet_id       = module.vpc.private_subnets[0]
#   security_groups = [module.efs_sg.this_security_group_id]
# }

# resource "aws_efs_mount_target" "efs-target1" {
#   file_system_id  = aws_efs_file_system.efs.id
#   subnet_id       = module.vpc.private_subnets[1]
#   security_groups = [module.efs_sg.this_security_group_id]
# }


resource "aws_efs_file_system" "efs_file_system" {
  creation_token   = "efs-test"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
}