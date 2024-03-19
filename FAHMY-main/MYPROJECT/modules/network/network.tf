#VPC

resource "aws_vpc" "group1_vpc" {
  cidr_block  = var.cidr_block_vpc
  tags = {
    Name = "group1_vpc"
  }
}
#---------------------------------------------
#Private_Subnet

resource "aws_subnet" "group1_private_subnet" {
  vpc_id     = aws_vpc.group1_vpc.id
  cidr_block = var.cidr_block_private

  tags = {
    Name = "group1_private_subnet"
  }
}
#---------------------------------------------
#Internet_Gateway

resource "aws_internet_gateway" "group1_internet_gateway" {
  vpc_id = aws_vpc.group1_vpc.id

  tags = {
    Name = "group1_internet_gateway"
  }
}
#---------------------------------------------
#Route_Table

resource "aws_route_table" "group1_route_table" {
  vpc_id = aws_vpc.group1_vpc.id

  route {
    cidr_block = var.cidr_block_route_table
    gateway_id = aws_internet_gateway.group1_internet_gateway.id
  }

  tags = {
    Name = "group1_route_table"
  }
}
#---------------------------------------------
#Route_Table_Association

resource "aws_route_table_association" "group1_association_route_table" {
  subnet_id      = aws_subnet.group1_public_subnet.id
  route_table_id = aws_route_table.group1_route_table.id
}
#---------------------------------------------
#Route_Table_Association_internet_gateway

resource "aws_route_table_association" "group1_association_internet_gateway" {
  gateway_id     = aws_internet_gateway.group1_internet_gateway.id
  route_table_id = aws_route_table.group1_route_table.id
}
#---------------------------------------------
#Public_Subnet

resource "aws_subnet" "group1_public_subnet" {
  vpc_id            = aws_vpc.group1_vpc.id
  cidr_block        = var.cidr_block_public
}
#---------------------------------------------