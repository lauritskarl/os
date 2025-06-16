variable "gandi_personal_access_token" {
  sensitive = true
}

variable "hetznerdns_api_token" {
  sensitive = true
}

variable "hcloud_token" {
  sensitive = true
}

variable "domain" {
  default = "example.com"
}

variable "owner_email" {
  sensitive = true
}

variable "owner_type" {
  sensitive = true
}

variable "owner_street_addr" {
  sensitive = true
}

variable "owner_zip" {
  sensitive = true
}

variable "owner_phone" {
  sensitive = true
}

variable "owner_given_name" {
  sensitive = true
}

variable "owner_family_name" {
  sensitive = true
}

variable "owner_country" {
  sensitive = true
}

variable "owner_city" {
  sensitive = true
}

variable "owner_state" {
  sensitive = true
}
