resource "vultr_reserved_ip" "core-lax" {
  region = "lax"
  ip_type = "v6"
  instance_id = "${vultr_instance.core-lax.id}"
}

resource "vultr_reserved_ip" "core-atl" {
  region = "atl"
  ip_type = "v6"
  instance_id = "${vultr_instance.core-atl.id}"
}

resource "vultr_reserved_ip" "core-ord" {
  region = "ord"
  ip_type = "v6"
  instance_id = "${vultr_instance.core-ord.id}"
}

resource "vultr_reserved_ip" "core-nyc" {
  region = "nyc"
  ip_type = "v6"
  instance_id = "${vultr_instance.core-nyc.id}"
}


resource "vultr_reserved_ip" "ingress-sjc-v4" {
  region = "sjc"
  ip_type = "v4"
  instance_id = "${vultr_instance.ingress-sjc.id}"
}

resource "vultr_reserved_ip" "ingress-sjc-v6" {
  region = "sjc"
  ip_type = "v6"
  instance_id = "${vultr_instance.ingress-sjc.id}"
}

resource "vultr_reserved_ip" "ingress-fll-v4" {
  region = "fll"
  ip_type = "v4"
  instance_id = "${vultr_instance.ingress-fll.id}"
}

resource "vultr_reserved_ip" "ingress-fll-v6" {
  region = "fll"
  ip_type = "v6"
  instance_id = "${vultr_instance.ingress-fll.id}"
}
