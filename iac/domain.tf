data "gandi_domain" "example_com" {
  name = var.domain
}

resource "gandi_domain" "example_com" {
  name = var.domain
  owner {
    email           = var.owner_email
    type            = var.owner_type
    street_addr     = var.owner_street_addr
    zip             = var.owner_zip
    phone           = var.owner_phone
    given_name      = var.owner_given_name
    family_name     = var.owner_family_name
    country         = var.owner_country
    city            = var.owner_city
    state           = var.owner_state
    data_obfuscated = true
    mail_obfuscated = true
  }
  autorenew = true
  tags = ["homelab"]
}

resource "gandi_nameservers" "example_com" {
  domain      = var.domain
  nameservers = ["hydrogen.ns.hetzner.com.", "oxygen.ns.hetzner.com.", "helium.ns.hetzner.de."]
}
