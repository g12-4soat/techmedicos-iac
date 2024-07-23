variable "region" {
  default     = "us-east-1"
  description = "Região default do AWS Academy"
}

variable "user-medico" {
  default     = "90264SP"
  description = "Usuário padrão do médico no cognito"
}

variable "user-paciente" {
  default     = "16756333631"
  description = "Usuário padrão do paciente no cognito"
}

variable "email-medico" {
  default     = "g12.4soat.fiap@outlook.com"
  description = "Email padrão do cognito"
}

variable "email-paciente" {
  default     = "teste@teste.com"
  description = "Email padrão do cognito"
}

variable "password-default" {
  default  = "Usuario123!"
  description = "Senha padrão do cognito"
}

variable "secrets-name" {
  default = "lambda-auth-credentials"
}