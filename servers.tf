resource "hcloud_ssh_key" "main" {
  name       = ""
  public_key = file("")
}

resource "hcloud_ssh_key" "backup" {
  name       = ""
  public_key = file("")
}

resource "hcloud_primary_ip" "homelab_ipv4" {
  name          = "homelab_ipv4"
  datacenter    = "hel1-dc2"
  type          = "ipv4"
  assignee_type = "server"
  auto_delete   = false
}

resource "hcloud_primary_ip" "homelab_ipv6" {
  name          = "homelab_ipv6"
  datacenter    = "hel1-dc2"
  type          = "ipv6"
  assignee_type = "server"
  auto_delete   = false
}

resource "hcloud_rdns" "homelab_ipv4" {
  primary_ip_id = hcloud_primary_ip.homelab_ipv4.id
  ip_address    = hcloud_primary_ip.homelab_ipv4.ip_address
  dns_ptr       = "homelab.example.com"
}

resource "hcloud_rdns" "homelab_ipv6" {
  primary_ip_id = hcloud_primary_ip.homelab_ipv6.id
  ip_address    = hcloud_primary_ip.homelab_ipv6.ip_address
  dns_ptr       = "homelab.example.com"
}

resource "hcloud_volume" "homelab" {
  name      = "homelab"
  size      = "32"
  server_id = hcloud_server.homelab.id
  automount = true
  format    = "xfs"
}

resource "hcloud_server" "homelab" {
  name        = "homelab"
  server_type = "cpx11"
  image       = "fedora-41"
  location    = "hel1"
  user_data   = file("user_data.yml")
  ssh_keys    = [hcloud_ssh_key.main.id, hcloud_ssh_key.backup.id]
  public_net {
    ipv4_enabled = true
    ipv4         = hcloud_primary_ip.homelab_ipv4.id
    ipv6_enabled = true
    ipv6         = hcloud_primary_ip.homelab_ipv6.id
  }
}

output "homelab_ipv4" {
  value = hcloud_primary_ip.homelab_ipv4.ip_address
}

output "homelab_ipv6" {
  value = hcloud_primary_ip.homelab_ipv6.ip_address
}

output "homelab_volume_linux_device" {
  value = hcloud_volume.homelab.linux_device
}
