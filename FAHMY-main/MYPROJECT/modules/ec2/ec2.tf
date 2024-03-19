#ec2_instance

resource "aws_instance" "group1_ec2"{
    ami= var.ami
    instance_type= var.instance_type
    subnet_id = aws_subnet.group1_public_subnet.id
    tags = {
    Name = "group1_ec2"
}
}