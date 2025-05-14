resource "aws_instance" "instance" {
  ami           = data.aws_ami.devops-practice.id
  instance_type = "c6a.2xlarge"
  security_groups = [aws_security_group.sg.name]


  tags = {
    Name = "tf-example"
    project = "roboshop"
  }
}