resource "vultr_firewall_group" "base" {
  description = "base firewall"
}

resource "vultr_firewall_group" "core" {
  description = "core router firewall"
}

resource "vultr_firewall_group" "ingress" {
  description = "ingress firewall"
}
