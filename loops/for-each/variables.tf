variable "vehicles" {
  type = list(string)
  default = ["car", "bike", "bus", "truck", "scooter", "car"]
}


variable "num" {
  type = list(number)
  default = [1, 2, 3, 4, 5, 6, 1]
}

variable "num_set" {
  type = set(number)
  default = [1, 2, 3, 4, 5, 6, 1]
}