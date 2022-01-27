provider "aws" {
  region = "us-east-1"
}
resource "aws_launch_configuration" "as_config" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  security_groups    = ["sg-03769a97218bb6646"]
}
resource "aws_autoscaling_group" "bar" {
  name                 = var.name 
  depends_on           = ["aws_launch_configuration.as_config"]
  launch_configuration = aws_launch_configuration.as_config.name
  min_size             = 1
  max_size             = 2
  desired_capacity     = 1
  target_group_arns = [var.target_group_arns]
 availability_zones = var.availability_zones
}
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mynewdb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
