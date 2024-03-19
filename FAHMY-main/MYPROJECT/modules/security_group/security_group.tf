#secrity_group
resource "aws_security_group" "allow_tls" {
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.group1_vpc.id

  tags = {
    Name = "allow_tls"
  }
}
#secrity_group_ingress_rule
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_block_ingress_security_group
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
#secrity_group_egress_rule
resource "aws_vpc_security_group_egress_rule" "group1_secrity_group" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_block_egress_security_group
  ip_protocol       = "-1" # semantically equivalent to all ports
}