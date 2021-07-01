
output "zone_id" {
 value = data.hetznerdns_zone.info.id
}

output "domain" { 
  value = var.host == "@" ? var.zone : "${var.host}.${data.hetznerdns_zone.info.name}"
}
