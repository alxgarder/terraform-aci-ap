output "app_name" {
  value = var.app_name
}

output "tenant_dn" {
  value = var.tenant_dn
}

output "id" {
  value = aci_application_profile.app.id
}
