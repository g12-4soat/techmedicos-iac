module "cognito" {
  source = "./modules/cognito"
}

module "dynamoDb" {
  source = "./modules/dynamoDb" 
  aws_region = var.region
}

module "eks" {
  source = "./modules/eks"
}