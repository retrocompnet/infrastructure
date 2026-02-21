variable "DEFAULT_PLAN" {}
variable "DEFAULT_OS_ID" {}

resource "vultr_instance" "core-lax" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "lax"
  enable_ipv6 = true
  disable_public_ipv4 = true
  hostname = "core-lax"
  firewall_group_id = "${vultr_firewall_group.core.id}"

  tags = ["core"]
  user_data = "${file("cloud-config/core.yaml")}"
}

resource "vultr_instance" "core-atl" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "atl"
  enable_ipv6 = true
  disable_public_ipv4 = true
  hostname = "core-atl"
  firewall_group_id = "${vultr_firewall_group.core.id}"

  tags = ["core"]
  user_data = "${file("cloud-config/core.yaml")}"
}

resource "vultr_instance" "core-ord" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "ord"
  enable_ipv6 = true
  disable_public_ipv4 = true
  hostname = "core-ord"
  firewall_group_id = "${vultr_firewall_group.core.id}"

  tags = ["core"]
  user_data = "${file("cloud-config/core.yaml")}"
}

resource "vultr_instance" "core-nyc" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "nyc"
  enable_ipv6 = true
  disable_public_ipv4 = true
  hostname = "core-nyc"
  firewall_group_id = "${vultr_firewall_group.core.id}"

  tags = ["core"]
  user_data = "${file("cloud-config/core.yaml")}"
}

resource "vultr_instance" "ingress-sjc" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "sjc"
  enable_ipv6 = true
  hostname = "ingress-sjc"
  firewall_group_id = "${vultr_firewall_group.ingress.id}"

  tags = ["ingress"]
  user_data = "${file("cloud-config/ingress.yaml")}"
}

resource "vultr_instance" "ingress-fll" {
  plan = var.DEFAULT_PLAN
  os_id = var.DEFAULT_OS_ID
  region = "fll"
  enable_ipv6 = true
  hostname = "ingress-fll"
  firewall_group_id = "${vultr_firewall_group.ingress.id}"

  tags = ["ingress"]
  user_data = "${file("cloud-config/ingress.yaml")}"
}
