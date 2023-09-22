output "app_name" {
  value = "${random_id.app_name.hex}"
}

output "tenant_dn" {
  value = var.tenant_dn
}

output "id" {
  value = aci_application_profile.app.id
}
