variable "cidr_block_vpc" {
description = "its the CIDR for VPC"
}
variable "cidr_block_private" {
  description = "its the CIDR for subnet"
}
variable "cidr_block_route_table" {
  description = "its the CIDR for route_table"
}
variable "cidr_block_public" {
  description = "its the CIDR for public"
}
variable "ami" {
    description= "its the ami of ec2 instance"
    type= string 
}
variable "instance_type" {
    description= "its the instance_type of ec2 instance"
    type= string 
}
variable "bucket_name" {
    description = "its the S3 bucket name"
    type  =string
}
variable "cidr_block_ingress_security_group" {
description = "its the CIDR for ingress security_group"
}
variable "cidr_block_egress_security_group" {
description = "its the CIDR for egress security_group"
}