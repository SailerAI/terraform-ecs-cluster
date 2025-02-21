## Global Variables

variable "project_name" {
  description = "Nome do projeto"
  type        = string
}

variable "environment" {
  description = "Ambiente"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}



variable "capacity_providers" {
  description = "Capacity providers"
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
}
## Variables VPCs SSM STORE

#variable "ssm_vpc_id" {
#  description = "ID do VPC"
#  type        = string
#}

####}

#variable "ssm_private_subnet_ids" {
#  description = "IDs das subredes privadas"
#  type        = list(string)
#}

#variable "ssm_database_subnet_ids" {
#  description = "IDs das subredes de banco de dados"
#  type        = list(string)
#}

## Variables Load Balancer

#variable "load_balancer_internal" {
#  description = "Se o load balancer é interno"
#  type        = bool
#}
#
#variable "load_balancer_type" {
#  description = "Tipo do load balancer"
#  type        = string
#}


##### ECS Variables
