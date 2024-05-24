# Una tupla es similar a una lista.
# Pero puede contener diferentes tipos de elementos

variable "ohio" {
  description = "CIDR de la VPC de ohio"
  type = tuple([
    string,
    string,
    number,
    bool,
    string
  ])
}
