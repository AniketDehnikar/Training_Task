variable "namespace" {
  type        = string
  description = "Kubernetes Namespace for alpine"
  default     = ""
}

variable "name" {
  type        = string
  description = "Helm Release Name for alpine"
  default     = ""
}
