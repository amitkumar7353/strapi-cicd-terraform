output "ecr_repo_url" {
  value = aws_ecr_repository.strapi.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.strapi_cluster.name
}

output "alb_url" {
  value = aws_lb.strapi_alb.dns_name
}

