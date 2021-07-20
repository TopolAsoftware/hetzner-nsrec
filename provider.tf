########################################################################
### terraform requires declaration of required providers
###
terraform {
  required_providers {
    hetznerdns = {
          source  = "timohirt/hetznerdns"
    }
  }
}

variable "token" { description = "Hetzner DNS API token" }

provider "hetznerdns" { apitoken = var.token }

