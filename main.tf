locals {
  app_alias = "${var.app_name}"
}

// To get information regarding the tenant object without children
data "aci_rest" "tn_info" {
  path = "/api/node/mo/${var.tenant_dn}.json"
}

// Create a unique random id we can use as name for the contract 
// We will use name_alias as a human readable name
resource "random_id" "app_name" {
  keepers = {
  }
  byte_length = 8
}

resource "aci_application_profile" "app" {
  tenant_dn   = data.aci_rest.tn_info.id
  name        = "${random_id.app_name.hex}"
  name_alias  = "${var.app_name}"
  annotation  = "automation:jet-net"
  description = "${var.description}"
  prio        = "level1"
}
