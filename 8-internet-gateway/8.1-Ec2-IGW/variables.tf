variable "virginia_cidr" {
  description = "CIDR de la VPC de Virginia"
  type        = string
  sensitive   = true
}

variable "subnets" {
  description = "lista de subnet"
  type        = list(string)
}

variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}

variable "sg_ingres_cidr" {
  description = "CIDR for ingress trafic"
  type        = string
}