# Image Builder

## Please see our [Book](https://image-builder.sigs.k8s.io) for more in-depth documentation.

## What is Image Builder?

Image Builder is a tool for building Kubernetes virtual machine images across multiple infrastructure providers. The resulting VM images are specifically intended to be used with [Cluster API](https://github.com/kubernetes-sigs/cluster-api) but should be suitable for other setups that rely on Kubeadm.

containerd 1.5.13

v1.22.17 => crictl v1.22.1
v1.23.4 => crictl v1.23.0


containerd 1.7.8

v1.26.10 => crictl v1.26.1
v1.27.7 => crictl V1.27.1
v1.28.3 => crictl v1.28.0

## Building for Openstack CAPI Image

make deps-openstack
PACKER_VAR_FILES=./image-vars/ubuntu_2204_var.json make build-openstack-ubuntu-2204

PACKER_VAR_FILES=./image-vars/var_file_1.22.17-rocky.json make build-openstack-rockylinux-8

## Note

We can no longer build 1.22 or 1.23 CAPI images as the repo key/xml is no longer able to be downloaded to install those Kubernetes versions.

As of 2024-01-04 Kubernetes 1.24.17 is the oldest version we can build