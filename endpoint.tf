resource "aws_vpc_endpoint" "ec2" {
  vpc_endpoint_type  = "Interface"
  vpc_id             = var.vpcid
  service_name       = "com.amazonaws.us-east-1.ec2"
  security_group_ids = var.sg_id
  tags = {
    Name = "ecvpcendpoint"
  }

}
/*
resource "aws_security_group" "epsg" {
  name   = "ep_sg"
  vpc_id = var.vpcid

  ingress {
    from_port   = 443
    to_port     = 443
    cidr_blocks = [var.cidr]
    protocol    = "tcp"
  }
  tags = {
    Name = "ec2-vpcendpoint"
  }

}
*/