output "endpoint" {
    value = aws_vpc_endpoint.ec2.service_name
}
/*
output "endpoint_sg" {
    value = aws_security_group.epsg.id  
}
*/