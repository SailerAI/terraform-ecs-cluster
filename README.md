# terraform-ecs-cluster
Terraform ECS Cluster  Module 

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_ssm_parameter.database_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.private_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.public_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |
| [aws_ssm_parameter.vpc_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_providers"></a> [capacity\_providers](#input\_capacity\_providers) | Capacity providers | `list(string)` | <pre>[<br/>  "FARGATE",<br/>  "FARGATE_SPOT"<br/>]</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nome do projeto | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_ssm_database_subnet_ids"></a> [ssm\_database\_subnet\_ids](#input\_ssm\_database\_subnet\_ids) | IDs das subredes de banco de dados | `list(string)` | n/a | yes |
| <a name="input_ssm_private_subnet_ids"></a> [ssm\_private\_subnet\_ids](#input\_ssm\_private\_subnet\_ids) | IDs das subredes privadas | `list(string)` | n/a | yes |
| <a name="input_ssm_public_subnet_ids"></a> [ssm\_public\_subnet\_ids](#input\_ssm\_public\_subnet\_ids) | IDs das subredes públicas | `list(string)` | n/a | yes |
| <a name="input_ssm_vpc_id"></a> [ssm\_vpc\_id](#input\_ssm\_vpc\_id) | ID do VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_database_subnet_paths"></a> [ssm\_database\_subnet\_paths](#output\_ssm\_database\_subnet\_paths) | Paths for all database subnet IDs stored in SSM Parameter Store |
| <a name="output_ssm_private_subnet_id"></a> [ssm\_private\_subnet\_id](#output\_ssm\_private\_subnet\_id) | n/a |
| <a name="output_ssm_private_subnet_paths"></a> [ssm\_private\_subnet\_paths](#output\_ssm\_private\_subnet\_paths) | Paths for all private subnet IDs stored in SSM Parameter Store |
| <a name="output_ssm_public_subnet_details"></a> [ssm\_public\_subnet\_details](#output\_ssm\_public\_subnet\_details) | List of public subnet details with paths and IDs stored in SSM Parameter Store |
| <a name="output_ssm_public_subnet_paths"></a> [ssm\_public\_subnet\_paths](#output\_ssm\_public\_subnet\_paths) | Paths for all public subnet IDs stored in SSM Parameter Store |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->