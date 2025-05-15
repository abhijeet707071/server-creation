# Create an EC2 instance in AWS
resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = data.aws_ami.devops-practice.id
  instance_type = each.value["instance_type"]
  security_groups = [aws_security_group.sg.name]


  tags = {
    Name    = each.value["name"]
    project = "roboshop"
  }

  provisioner "remote-exec" {
    inline = [
      "cd /home/ec2-user",
      "git clone https://github.com/abhijeet707071/shell-script"
    ]

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = var.ec2_user_password
      host     = self.private_ip
    }
  }


}


resource "aws_route53_record" "A" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${each.value["name"]}.learntechnology.space"
  type     = "A"
  ttl      = 30
  records = [aws_instance.instance[each.key].private_ip]
}