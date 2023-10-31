variable "TFC_AWS_PROVIDER_AUTH" {
  description = "Config para usar OIDC para se autenticar com AWS"
}

variable "TFC_AWS_RUN_ROLE_ARN" {
  description = "ARN da role de acesso AWS"
}

variable "CLOUDFRONT_ORIGIN_PATH" {
  description = "Caminho do bucket com a última versão dos arquivos"
  default = ""
}

locals {
  region = "us-east-1"
  app_name = "datalytics"
  team_name = "CapiBytes"
  env = "dev"
  ami_ubuntu = "ami-0fc5d935ebf8bc3bc"
  datalytics_zone_id = "Z04453662P78EHUNHTDS5"
  dominio = "datalytics.devs2blu.dev.br"
  }