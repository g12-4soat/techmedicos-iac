resource "aws_lambda_function" "tech_medicos_lambda_auth" {
  function_name = "tech-medicos-lambda-auth"
  filename      = "../../auth_techmedicos.zip"
  handler       = "TechMedicosAuth::TechMedicosAuth.Functions_TechMedicosAuth_Generated::TechMedicosAuth"
  runtime       = "dotnet8"
  role          = var.arn
  tags = {
    Name = "tech-medicos-lambda"
  }
  timeout     = 30
  memory_size = 512
}

resource "aws_lambda_function" "tech_medicos_lambda_cadastro" {
  function_name = "tech-medicos-lambda-cadastro"
  filename      = "../../auth_techmedicos.zip"
  handler       = "TechMedicosAuth::TechMedicosAuth.Functions_LambdaCadastro_Generated::LambdaCadastro"
  runtime       = "dotnet8"
  role          = var.arn
  tags = {
    Name = "tech-medicos-lambda"
  }
  timeout     = 30
  memory_size = 512
}