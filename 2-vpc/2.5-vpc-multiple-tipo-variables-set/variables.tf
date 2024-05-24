# set no acepta elementos repetidos
# no podemos acceder a elementos puntuales

variable "set_cidrs" {
  description = "CIDR de la VPC de Virginia"
  type        = set(string)
}
