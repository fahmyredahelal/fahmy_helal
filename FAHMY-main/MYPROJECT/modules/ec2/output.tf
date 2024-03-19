output "aws_instance" {
  value = aws_instance.group1_ec2.id
}
output "ami" {
  value = var.ami.id
}
