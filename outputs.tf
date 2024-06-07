output "path_to_kubeconfig_file" {
  description = "Path to the kubeconfig of the Talos Linux cluster"
  value       = module.talos.path_to_kubeconfig_file
}

output "path_to_talosconfig_file" {
  description = "Path to the talosconfig of the Talos Linux cluster"
  value       = module.talos.path_to_talosconfig_file
}

output "elb_dns_name" {
  description = "Public ELB DNS name."
  value       = module.talos.elb_dns_name
}

