########################################################################
###
### terraform-hetzner-webserver script
### 2021 (c) Oleg Vlasenko, MIT License
###
########################################################################
########################################################################
data "hetznerdns_zone" "info" {
  name = var.zone
}

########################################################################
#
resource "hetznerdns_record" "hdns_arecord" {
  zone_id = data.hetznerdns_zone.info.id
  value   = var.record
  name    = var.host
  type    = var.type
  ttl     = var.ttl != 0 ? var.ttl : data.hetznerdns_zone.info.ttl
}

########################################################################
