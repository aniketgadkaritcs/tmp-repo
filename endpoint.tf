resource "aws_vpc_endpoint" "ec2" {
  vpc_endpoint_type  = "Interface"
  vpc_id             = var.vpcid
  service_name       = "com.amazonaws.us-east-1.ec2"
  #service_name       = "com.amazonaws.us-east-1.${file("../endpoints.txt")}"
  security_group_ids = [aws_security_group.epsg.id]
  tags = {
    Name = "ecvpcendpoint"
  }
  depends_on = [ aws_security_group.epsg, aws_security_group_rule.ep_sg_rule ]

}

resource "aws_security_group" "epsg" {
  name   = "endpoint_sg"
  vpc_id = var.vpcid
}

resource "aws_security_group_rule" "ep_sg_rule" {
  type = "ingress"
  from_port = "443"
  to_port = "443"
  protocol = "tcp"
  cidr_blocks = [var.cidr]
  security_group_id = aws_security_group.epsg.id
}