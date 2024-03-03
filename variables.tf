variable "vpcid" {
    type = string
    default = "vpc-0684439dd827d81b9"
}

/*variable "sg_id" {
}
*/

variable "cidr" {
    type = string
    default = "10.10.10.0/24"
  
}

variable "endpoints" {
    type = list(string)
    #default = [ "ec2", "ssm", "kms", "logs", "sts" ]
    default = [ "ec2", "ssm" ]
  
}