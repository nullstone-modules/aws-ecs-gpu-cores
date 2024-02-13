# ECS GPU Cores

Enables a container running on AWS ECS (EC2) to use GPU cores.

WARNING: You must use a cluster running EC2 instances with GPU cores. (Instance Class: `p` and `g`)

When selecting `var.num_cores`, keep in mind the container will not start if there aren't available cores in the cluster.
If you use an auto-scaling cluster, there may be a delay starting the container as it waits for additional instances to become available.
