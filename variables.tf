variable "host" {}
variable "username" {}
variable "password" {}



#variable "network" {
#  type = map
#  default = {
#    name                       = "myTfSegment"
#    gateway                    = "10.32.23.1"
#    connected_gateway          = "qa-t1-01"
#    cidr                       = "10.32.23.1/24"
#    transportZone              = "db-tz-1216"
#    tier1                      = "qa-t1-01"
#    networkRangeBegin          = "11" # for NSX-T segment if DHCP enabled
#    networkRangeEnd            = "50" # for NSX-T segment if DHCP enabled
#    type                       = "V4" # for Avi
#    dhcp_enabled               = "true" # for Avi
#    exclude_discovered_subnets = "true" # for Avi
#    vcenter_dvs                = "true" # for Avi
#  }
#}

variable "network" {
  type = map
  default = {
    name                       = "ldTfSegment"
    gateway                    = "10.32.24.1"
    cidr                       = "10.32.24.1/24"
    transportZone              = "morpheus-overlay-tz"
    connected_gateway          = "qa-t0-01"
    tier0                      = "qa-t0-01"
    networkRangeBegin          = "11" # for NSX-T segment if DHCP enabled
    networkRangeEnd            = "50" # for NSX-T segment if DHCP enabled
    type                       = "V4" # for Avi
    dhcp_enabled               = "false" # for Avi
    exclude_discovered_subnets = "true" # for Avi
    vcenter_dvs                = "true" # for Avi
  }
}
