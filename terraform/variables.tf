variable vpc_name {}
variable "vpc_cidr" {}
variable gw_name {}
variable "avail_zones" {}
variable "private_subnets" {}
variable "private_subnet_name" {}
variable "public_subnets" {}
variable "public_subnet_name" {}
variable "cluster_name" {}
variable "ami" {}
variable "ec2_type" {}
variable "ec2_avail" {}
variable "key" {
  
}
variable "credentials" {
  type = map(string)
}
# variable "username" {}
# variable "password" {}
variable "account_id" {
  
}