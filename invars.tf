
variable "zone" {
    description = "DNS Server zone (domain name w/o host)"
}

variable "host" {
    description = "Sub-Domain (host only) for WEB Server"
    default = "@"
}

variable "record" {
    description = "ns record value"
}

variable "type" {
    description = "Type of ns record (a, aaaa, cname, tct ...)"
    default = "TXT"
}

variable "ttl" {
    description = "Custo,ized TTL of recrod (optional)"
    default = 0
    type = number
}

