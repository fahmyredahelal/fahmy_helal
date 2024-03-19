module "network" {
  source = "../modules/network"
  cidrcidr_block_vpc = var.cidr_block_vpc
  cidr_block_private  =  var.cidr_block_private
  cidr_block_route_table = var.cidr_block_route_table
  cidr_block_public = var.cidr_block_public
}
module "ec2" {
  source = "../modules/ec2"
  ami = var.ami
  instance_type = var.instance_type

}
module "S3_bucket" {
  source = "../modules/S3_bucket"
  bucket_name = var.bucket_name
}
module "security_group" {
  source = "../modules/security_group"
  cidr_block_ingress_security_group = var.cidr_block_ingress_security_group
  cidr_block_egress_security_group = var.cidr_block_egress_security_group
}