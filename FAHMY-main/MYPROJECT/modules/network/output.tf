output "vpc_id" {
  value = aws_vpc.group1_vpc
}

output "subnet_id" {
  value = aws_subnet.group1_private_subnet.id
}

output "subnet_id" {
  value = aws_subnet.group1_public_subnet.id
}