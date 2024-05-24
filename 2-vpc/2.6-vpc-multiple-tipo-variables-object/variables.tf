variable "virginia" {
  description = "CIDR de la VPC de Virginia"
  type = object({
    nombre       = string
    cantidad     = number
    cidrs        = list(string)
    dispobinible = bool
    env          = string
    owner        = string
  })
}
