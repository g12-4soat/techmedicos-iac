provider "aws" {
  region = var.aws_region
}

resource "aws_dynamodb_table" "consultas" {
  name           = "consultas"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Id"


  attribute {
    name = "Id"
    type = "S"
  }

 attribute {
    name = "MedicoId"
    type = "S"
  }

  # Definição do índice global secundário
  global_secondary_index {
    name               = "medicoIdIndex"
    hash_key           = "MedicoId"
    projection_type    = "ALL"  # Projetar todos os atributos
  }

  tags = {
    Name        = "DynamoDB do TechMedicos de Consultas"
    Repository  = "https://github.com/g12-4soat/techmedicos-iac"
    Environment = "Prod"
    ManagedBy   = "Terraform"
  }
}

resource "aws_dynamodb_table" "pacientes" {
  name           = "pacientes"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Id"


  attribute {
    name = "Id"
    type = "S"
  }

 attribute {
    name = "Cpf"
    type = "S"
  }
  # Definição do índice global secundário
  global_secondary_index {
    name               = "cpfIndex"
    hash_key           = "Cpf"
    projection_type    = "ALL"  # Projetar todos os atributos
  }

  tags = {
    Name        = "DynamoDB do TechMedicos de Pacientes"
    Repository  = "https://github.com/g12-4soat/techmedicos-iac"
    Environment = "Prod"
    ManagedBy   = "Terraform"
  }
}

resource "aws_dynamodb_table" "medicos" {
  name           = "medicos"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Id"


  attribute {
    name = "Id"
    type = "S"
  }

 attribute {
    name = "Crm"
    type = "S"
  }
  # Definição do índice global secundário
  global_secondary_index {
    name               = "crmIndex"
    hash_key           = "Crm"
    projection_type    = "ALL"  # Projetar todos os atributos
  }

  tags = {
    Name        = "DynamoDB do TechMedicos de Médicos"
    Repository  = "https://github.com/g12-4soat/techmedicos-iac"
    Environment = "Prod"
    ManagedBy   = "Terraform"
  }
}

