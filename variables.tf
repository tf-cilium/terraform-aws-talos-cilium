variable "cluster_name" {
  type    = string
  default = "talos-cilium"
}

# Supported Talos versions (and therefore K8s versions) can be found here: https://github.com/siderolabs/talos/releases
variable "talos_version" {
  type    = string
  default = "v1.7.4"
}

variable "kubernetes_version" {
  type    = string
  default = "1.29.3"
}

variable "cilium_version" {
  type    = string
  default = "1.15.5"
}

variable "cilium_install" {
  description = "Install Cilium CNI ?"
  type        = bool
  default     = true
}

variable "pod_cidr" {
  description = "CIDR of Pods"
  type        = string
  default     = "100.64.0.0/14"
}

variable "service_cidr" {
  description = "CIDR of Pods"
  type        = string
  default     = "100.68.0.0/16"
}

variable "azs_letter" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "vpc_name" {
  type    = string
  default = "vpc-talos"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

