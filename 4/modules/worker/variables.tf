variable "account_id" {
  type        = string
  description = "Account ID"
}

variable "worker_name" {
  type        = string
  description = "Cloudflare Worker Name"
}

variable "d1_database_id" {
  type        = string
  description = "D1 Database ID to bind to the Worker"
}

