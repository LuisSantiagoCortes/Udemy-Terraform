Target funciona asi:
Si queremos desplegar solo un recurso sin afectar los otros recursos que nos muestar el terraform plan. Podemos desplegarlo de la siguiente manera.

terraform apply --target aws_subnet.public_subnet
