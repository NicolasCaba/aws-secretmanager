output "secret_mager_id" {
  description = "Id del secret manager creado"
  value = aws_secretsmanager_secret.outputs_secret.id
}

output "secret_manager_nombre" {
  description = "Nombre del secret manager"
  value = aws_secretsmanager_secret.outputs_secret.name
}