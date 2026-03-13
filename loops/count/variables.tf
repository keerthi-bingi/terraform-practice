variable "instances" {
  type = list
  default = ["mongodb", "redis", "mysql", "user", "rabbitmq", "cart", "catalogue", "payment", "shipping", "frontend"]
}