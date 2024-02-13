locals {
  gpu_req = {
    type  = "GPU"
    value = var.num_cores
  }
}

output "resource_requirements" {
  value = var.num_cores > 0 ? [local.gpu_req] : []
}
