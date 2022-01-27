variable "name_prefix"{
type = string
default = "terraform-lc-example-"
}
variable "image_id"{
  type = string
  default = "ami-04505e74c0741db8d"
}
variable "instance_type"{
  type = string
  default = "t2.micro"
}
variable "availability_zones" {
  type = list(string)
  default = ["us-east-1c"]
}
variable "name" {
  type = string
  default = "terraform-asg-example"
}
variable "vpc_id" {
  type = string
  default = "vpc-6014600b"
}
variable "name_lb" {
  type = string
  default = "test-lb-tf"
}
variable "load_balancer_type" {
  type = string
  default = "application"
}
variable "target_id" {
  type = string
  default = "i-0080b8172b18ad08a"
}
variable "protocol" {
  type = string
  default = "HTTP"
}
variable "subnets" {
  type = list(string)
 default =  ["subnet-bff76bd4","subnet-15e22868"]
}
variable "security_groups" {
  type = list(string)
  default = ["sg-03769a97218bb6646"]
}
