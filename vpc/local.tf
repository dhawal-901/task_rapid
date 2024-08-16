locals {
  config = {
    default = {
      vpc_name        = "task_rapid"
      vpc_cidr        = "10.1.0.0/16"
      public_subnets  = ["10.1.1.0/24","10.1.2.0/24"]
      private_subnets = ["10.1.3.0/24","10.1.4.0/24"]
      azs             = ["ap-south-1a", "ap-south-1b","ap-south-1c"]

      lb_sg_name       = "lb_sq_dev"
      instance_sg_name = "instance_sq_dev"
      efs_sg_name = "efs_sq_dev"
      lb_name          = "lb-tf-dev"

      target_group_name = "lg-target-dev"
      certificate_arn   = ""

      ubuntu_ami           = "ami-0ad21ae1d0696ad58"
      ubuntu_instance_type = "t2.medium"

      #   bucket_name = "my-testing-bucket-${terraform.workspace}-000000"

      #   db_name              = "postgres2"
      #   db_identifier        = "postgres2"
      #   db_username          = "root"
      #   db_password          = "root1234"
      #   db_allocated_storage = 10
      #   db_engine            = "postgres"
      #   db_engine_version    = "16.3"
      #   db_instance_class    = "db.t3.micro"
      #   db_storage_type      = "gp2"
    }
  }

  Environment = local.config.default
}
