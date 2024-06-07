locals {
  region = data.aws_region.this.name

  azs = [for a in var.azs_letter : "${local.region}${a}"]
}

data "aws_region" "this" {}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = local.azs
  private_subnets = []
  public_subnets  = var.public_subnets

  enable_nat_gateway = false
  public_subnet_tags = { "type" = "public" }
}

module "talos" {
  source = "git::https://github.com/littlejo/terraform-aws-talos?ref=lifecycle"
  #source = "git::https://github.com/isovalent/terraform-aws-talos?ref=v0.7.0"

  talos_version      = var.talos_version
  kubernetes_version = var.kubernetes_version
  cluster_name       = var.cluster_name
  region             = local.region
  tags               = {}
  vpc_id             = module.vpc.vpc_id
  pod_cidr           = var.pod_cidr
  service_cidr       = var.service_cidr
}

resource "cilium" "this" {
  values     = templatefile("templates/values.yaml-tmpl", { pod_cidr = var.pod_cidr })
  version    = "1.15.5"
  depends_on = [module.talos]
}
