terraform {
  required_version = ">= 1.0.0, < 2.0.0"
  required_providers {
    cilium = {
      source  = "littlejo/cilium"
      version = "~> 0.2.0"
    }
  }
}

provider "cilium" {
  #config_content = base64encode(module.talos.kubeconfig)
  config_path = module.talos.path_to_kubeconfig_file
}
