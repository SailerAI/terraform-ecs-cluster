resource "aws_ecs_cluster" "main" {
  name = format("%s-%s-cluster", var.project_name, var.environment)
  setting {
    name  = "containerInsights"
    value = "enabled"
      }
}

resource "aws_ecs_cluster_capacity_providers" "main" {
  cluster_name = aws_ecs_cluster.main.name
  capacity_providers = var.capacity_providers
  default_capacity_provider_strategy {
    base = 1
    weight = 100
    capacity_provider = "FARGATE"
  }
}
