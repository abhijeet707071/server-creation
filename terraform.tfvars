zone_id = "Z0513418305E6VQZEA8MP"
vpc_id = "vpc-04b8bf71a5d60e455"

components = {
  frontend = {
    instance_type = "t2.micro"
    name = "frontend"
  }
  mongodb = {
    instance_type = "t2.micro"
    name = "mongodb"
  }
  mysql = {
    instance_type = "t2.micro"
    name = "mysql"
  }
  redis = {
    instance_type = "t2.micro"
    name = "redis"
  }
  rabbitmq = {
    instance_type = "t2.micro"
    name = "rabbitmq"
  }
  catalogue = {
    instance_type = "t2.micro"
    name = "catalogue"
  }
  user = {
    instance_type = "t2.micro"
    name = "user"
  }
  cart = {
    instance_type = "t2.micro"
    name = "cart"
  }
  shipping = {
    instance_type = "t2.micro"
    name = "shipping"
  }
  payment = {
    instance_type = "t2.micro"
    name = "payment"
  }
  dispatch = {
    instance_type = "t2.micro"
    name = "dispatch"
  }
}