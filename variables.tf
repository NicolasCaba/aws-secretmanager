/****************************************************/
# Credenciales AWS
/****************************************************/


/****************************************************/
# variables vpc
/****************************************************/
variable "vpc_name" {
  type = string
  description = "Nombre de la vpc"
}



/****************************************************/
# variables public subnets
/****************************************************/

variable "subnet_public_1a_name" {
  type = string
  description = "Nombre de la subred pública 1a"
}

variable "subnet_public_1b_name" {
  type = string
  description = "Nombre de la subred pública 1b"
}


variable "subnet_public_1c_name" {
  type = string
  description = "Nombre de la subred pública 1c"
}


/****************************************************/
# variables private subnets
/****************************************************/

variable "subnet_private_1a_name" {
  type = string
  description = "Nombre de la subred privada 1a"
}

variable "subnet_private_1b_name" {
  type = string
  description = "Nombre de la subred privada 1b"
}


variable "subnet_private_1c_name" {
  type = string
  description = "Nombre de la subred privada 1c"
}


