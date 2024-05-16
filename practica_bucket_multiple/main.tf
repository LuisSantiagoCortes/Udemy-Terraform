resource "aws_s3_bucket" "proceedores"{
    count = 6
    bucket = "terraform-santiagocortesdev-${random_string.sufijo[count.index].id}"
    tags = {
        Owner = "Nazareno"
        Enviroment = "Dev"
        Office = "proveedores"
    }
}

resource "random_string" "sufijo" {
    count   = 6
    length  = 8
    special = false
    upper   = false
    numeric = false
}
