variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
EOF

  type    = map(string)
  default = {}
}

variable "num_cores" {
  description = <<EOF
The number of GPU cores to dedicate to this ECS container.
If there aren't enough GPU cores in the cluster, the cluster will not be able to start the container.
EOF

  type    = number
  default = 1
}
