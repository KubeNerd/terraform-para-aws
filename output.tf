output "oidc" {
  value = module.cluster.oidc
}

output "ca" {
  value = module.cluster.certificate_authority
}

output "endpoint" {
  value = module.cluster.oidc
}