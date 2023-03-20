output "chart_name" {
  description = "Deployed alpine helm chart name"
  value       = helm_release.alpine.chart
}

output "release_id" {
  description = "Release name of the alpine helm chart"
  value       = helm_release.alpine.id
}

output "release_status" {
  description = "Release Status of the deployed alpine helm chart"
  value       = helm_release.alpine.status
}

output "version" {
  description = "Version of the deployed alpine helm chart"
  value       = helm_release.alpine.version
}
