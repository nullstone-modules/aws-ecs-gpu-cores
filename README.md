# ECS GPU Cores

Enables a container running on AWS ECS (EC2) to use GPU cores.

This capability configures the ECS task definition with resource requirements and environment variables needed to use GPUs.

## Docker Image

To properly enable GPU support, you need to install the CUDA drivers on the docker image.
It is easiest to use a base docker image provided by NVIDIA.
Here is a full list of docker image tags supported by NVIDIA: https://gitlab.com/nvidia/container-images/cuda/blob/master/doc/supported-tags.md.

## Configuration

You must use a cluster running EC2 instances with GPU cores. (Instance Class: `p` and `g`)
See [Working with GPUs on Amazon ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html) for more info.

When selecting `var.num_cores`, keep in mind the container will not start if there aren't available cores in the cluster.
If you use an auto-scaling cluster, there may be a delay starting the container as it waits for additional instances to become available.

## Env variables

The NVIDIA drivers can utilize environment variables for configuration.

See [Specialized Configurations with Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/docker-specialized.html?highlight=environment%20variable) for more info about NVIDIA configuration.
