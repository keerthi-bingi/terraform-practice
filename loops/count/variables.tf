variable "instances" {
  type = list
  default = ["mongodb", "redis", "mysql", "user", "rabbitmq", "cart", "catalogue", "payment", "shipping", "frontend"]
}

variable "zone_id" {
  default = "Z031668720LL13SP2V0EM"
}

variable "domain_name" {
  default = "bingi.online"
}