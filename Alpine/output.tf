output "alpine_chart_name" {
  description = "Deployed alpine helm chart name"
  value       = module.helm_alpine.chart_name
}

output "alpine_release_id" {
  description = "Release name of the alpine helm chart"
  value       = module.helm_alpine.release_id
}

output "alpine_release_status" {
  description = "Release Status of the deployed alpine helm chart"
  value       = module.helm_alpine.release_status
}

output "alpine_version" {
  description = "Version of the deployed alpine helm chart"
  value       = module.helm_alpine.version
}
