/*
output "endpoint" {
    #value = aws_vpc_endpoint.ec2.service_name
    value = [for endpoint in aws_aws_vpc_endpoint.endpoint: endpoint.service_name ]
}

output "endpoint_id" {
  #value = aws_vpc_endpoint.ec2.id
  value = [for endpoint in aws_aws_vpc_endpoint.endpoint: endpoint.id ]
}
*/
/*
output "endpoint_sg" {
    value = aws_security_group.epsg.id  
}
*/