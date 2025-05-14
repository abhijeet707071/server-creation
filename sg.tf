resource "aws_security_group" "sg" {
  name        = "allow_all_ports"
  description = "Allow all inbound and outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name    = "allow_all_ports"
    project = "roboshop"
  }
}

# Inbound Rule: Allow all TCP traffic from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_all_inbound" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  to_port           = 0
  ip_protocol       = "tcp"
}

# Outbound Rule: Allow all protocols to anywhere
resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
