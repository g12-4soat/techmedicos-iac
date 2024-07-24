resource "aws_cognito_user_pool" "tech_medicos_clientes_pool" {
  name                     = "tech-medicos-clientes-pool"
  mfa_configuration        = "OFF"
  alias_attributes         = ["email", "preferred_username"]
  auto_verified_attributes = ["email"]

  username_configuration {
    case_sensitive = false
  }

  schema {
    name                     = "typeUser"
    attribute_data_type      = "String"
    mutable                  = true
    developer_only_attribute = false
    string_attribute_constraints {
      max_length = 50
      min_length = 1
    }
  }

  tags = {
    Name = "tech_medicos_clientes_pool"
  }
}

resource "aws_cognito_user_pool_client" "tech_medicos_clientes_pool_client" {
  name                = "pool-client"
  explicit_auth_flows = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH"]
  user_pool_id        = aws_cognito_user_pool.tech_medicos_clientes_pool.id
}

resource "aws_cognito_user" "medicos_seed" {
  user_pool_id = aws_cognito_user_pool.tech_medicos_clientes_pool.id
  username     = var.user-medico
  password = random_password.master_password[0].result
  attributes   = {
    email = var.email-medico,
    email_verified = true
    typeUser = "medico"
  } 
}

resource "aws_cognito_user" "pacientes_seed" {
  user_pool_id = aws_cognito_user_pool.tech_medicos_clientes_pool.id
  username     = var.user-paciente
  password = random_password.master_password[1].result
  attributes   = {
    email = var.email-paciente,
    email_verified = true
    typeUser = "paciente"
  } 
}