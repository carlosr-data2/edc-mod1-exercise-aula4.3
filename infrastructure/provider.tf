provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
# somente aqui quando estamos definindo o backend do terraform, não conseguimos usar variaveis aqui
# e não conseguimos criar esse bucket pelo terraform, ele tem que já estar criado
# terraform.tfstate é um arquivo json que guardada o estada de cada recurso que é subido pelo terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-carlos"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-1"
  }
}
