provider "cloudflare" {
  api_token = var.api_token
}

resource "cloudflare_d1_database" "app" {
  account_id = var.account_id
  name       = var.d1_database_name
}

resource "cloudflare_workers_script" "hello" {
  account_id = var.account_id
  name       = var.worker_name
  content    = file("${path.module}/worker.js")
  module     = true

  compatibility_date = "2025-10-28"

  d1_database_binding {
    name       = "DB"
    database_id = cloudflare_d1_database.app.id
  }
}
