provider "gandi" {
  personal_access_token = var.gandi_personal_access_token
}

provider "hetznerdns" {
  api_token = var.hetznerdns_api_token
}

provider "hcloud" {
  token = var.hcloud_token
}
