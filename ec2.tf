resource "aws_instance" "this" {
  ami           = var.ami_id                     # mandatory
  instance_type = var.instance_type               # mandatory
  vpc_security_group_ids = var.sg_ids             # mandatory
  tags = var.tags                                 # optional
}

# resource "aws_security_group" "allow_all1" {
#   name   = "allow_all1"
 
  
#  egress {
#     from_port       = 0  
#     to_port         = 0
#     protocol        = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#  ingress {
#     from_port       = 0  
#     to_port         = 0
#     protocol        = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# tags= {
#     Name = "allow-all"
# }


# }
