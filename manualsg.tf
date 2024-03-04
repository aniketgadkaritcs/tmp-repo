# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0f23fa776349e4c76"
resource "aws_security_group" "manualsg" {
  description = "importsecuritygroup"
  egress = [{
    cidr_blocks      = ["10.10.0.0/16"]
    description      = "allow ssh"
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
    }, {
    cidr_blocks      = ["172.0.0.0/24"]
    description      = "allow https"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["192.1.0.0/24"]
    description      = "allow http"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  ingress                = []
  name                   = "importsecuritygroup"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0684439dd827d81b9"
}
