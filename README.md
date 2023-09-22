# terraform-aci-ap
Terraform module to create application profile. Not for production use.

```hcl
module "application" {
    source = "alxgarder/terraform/aci/ap"
    app_name = "<My Name>"
    description = "<My Description>
}
```
