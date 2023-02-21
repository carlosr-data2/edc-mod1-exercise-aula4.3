provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
# esta é a única parte que precisa criar manualmente
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-carlos3"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-1"
  }
}
