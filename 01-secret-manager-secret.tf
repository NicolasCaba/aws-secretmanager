# secret
resource "aws_secretsmanager_secret" "outputs_secret" {
  name        = "Outputs2"
  description = "Secret de los outputs creación vpc, subredes privadas y públicas"
}

# secret version
resource "aws_secretsmanager_secret_version" "outputs_secret_version" {
  secret_id     = aws_secretsmanager_secret.outputs_secret.id
  secret_string = <<EOF
  {
    "vpc_id": "${data.aws_vpc.info_vpc.id}",
    "vpc_name": "${data.aws_vpc.info_vpc.tags.Name}",
    "subred_public_1a_id": "${data.aws_subnet.info_subnet_public_1a.id}",
    "subred_public_1a_name": "${data.aws_subnet.info_subnet_public_1a.tags.Name}",
    "subred_public_1b_id": "${data.aws_subnet.info_subnet_public_1b.id}",
    "subred_public_1b_name": "${data.aws_subnet.info_subnet_public_1b.tags.Name}",
    "subred_public_1c_id": "${data.aws_subnet.info_subnet_public_1c.id}",
    "subred_public_1c_name": "${data.aws_subnet.info_subnet_public_1c.tags.Name}",
    "subred_private_1a_id": "${data.aws_subnet.info_subnet_private_1a.id}",
    "subred_private_1a_name": "${data.aws_subnet.info_subnet_private_1a.tags.Name}",
    "subred_private_1b_id": "${data.aws_subnet.info_subnet_private_1b.id}",
    "subred_private_1b_name": "${data.aws_subnet.info_subnet_private_1b.tags.Name}",
    "subred_private_1c_id": "${data.aws_subnet.info_subnet_private_1c.id}",
    "subred_private_1c_name": "${data.aws_subnet.info_subnet_private_1c.tags.Name}"
  }
  EOF
}
