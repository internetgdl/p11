variable "account_id" {
  description = "Cloudflare account ID"
  type        = string
  default     = "4b3a5ad916d9a620d75beefea58cc1e0"
}

variable "api_token" {
  description = "Cloudflare API token with Workers and D1 permissions"
  type        = string
  sensitive   = true
  default     = null
}

variable "worker_name" {
  description = "Nombre del worker"
  type        = string
  default     = "simple-worker"
}

variable "d1_database_name" {
  description = "Nombre de la base de datos D1"
  type        = string
  default     = "simple-db"
}
