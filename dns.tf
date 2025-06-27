data "hetznerdns_zone" "example_com" {
  name = var.domain
}

### General Aliases ###

resource "hetznerdns_record" "drive" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "drive"
  value   = "nextcloud"
  type    = "CNAME"
}

resource "hetznerdns_record" "git" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "git"
  value   = "gitea" # or sourcehut or gitlab or forgejo etc
  type    = "CNAME"
}

resource "hetznerdns_record" "rss" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "rss"
  value   = "freshrss"
  type    = "CNAME"
}

resource "hetznerdns_record" "feed" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "feed"
  value   = "freshrss"
  type    = "CNAME"
}

resource "hetznerdns_record" "inbox" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "inbox"
  value   = "roundcube" # or nextcloud etc
  type    = "CNAME"
}

resource "hetznerdns_record" "monitor" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "monitor"
  value   = "uptime-kuma" # or beszel or zabbix later
  type    = "CNAME"
}

resource "hetznerdns_record" "dashboard" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "dashboard"
  value   = "glance" # or homer or cockpit etc
  type    = "CNAME"
}

resource "hetznerdns_record" "admin" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "admin"
  value   = "cockpit"
  type    = "CNAME"
}

resource "hetznerdns_record" "search" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "search"
  value   = "searxng"
  type    = "CNAME"
}

resource "hetznerdns_record" "todo" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "todo"
  value   = "vikunja"
  type    = "CNAME"
}

resource "hetznerdns_record" "notes" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "notes"
  value   = "memos"
  type    = "CNAME"
}

### Primary Server ###

resource "hetznerdns_record" "example_com_root_a" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "@"
  value   = hcloud_primary_ip.homelab_ipv4.ip_address
  type    = "A"
}

resource "hetznerdns_record" "example_com_root_aaaa" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "@"
  value   = hcloud_primary_ip.homelab_ipv6.ip_address
  type    = "AAAA"
}

### Service Aliases ###

resource "hetznerdns_record" "homelab" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "homelab"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "cockpit" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "cockpit"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "beszel" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "beszel"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "it-tools" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "it-tools"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "uptime-kuma" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "uptime-kuma"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "glance" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "glance"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "gitea" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "gitea"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "freshrss" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "freshrss"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "memos" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "memos"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "searxng" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "searxng"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "vikunja" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "vikunja"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "ntfy" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "ntfy"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "roundcube" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "roundcube"
  value   = var.domain
  type    = "CNAME"
}

resource "hetznerdns_record" "wallos" {
  zone_id = data.hetznerdns_zone.example_com.id
  name    = "wallos"
  value   = var.domain
  type    = "CNAME"
}
