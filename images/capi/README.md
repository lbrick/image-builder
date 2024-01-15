# Image Builder for Cluster API

The Image Builder can be used to build images intended for use with Kubernetes [CAPI](https://cluster-api.sigs.k8s.io/) providers. Each provider has its own format of images that it can work with. For example, AWS instances use AMIs, and vSphere uses OVAs.

For detailed documentation, see https://image-builder.sigs.k8s.io/capi/capi.html.

## Building for Openstack CAPI Image

make deps-openstack
PACKER_VAR_FILES=./image-vars/ubuntu_2204_var.json make build-openstack-ubuntu-2204

PACKER_VAR_FILES=./image-vars/var_file_1.22.17-rocky.json make build-openstack-rockylinux-8

## Note

We can no longer build 1.22 or 1.23 CAPI images as the repo key/xml is no longer able to be downloaded to install those Kubernetes versions.

As of 2024-01-04 Kubernetes 1.24.17 is the oldest version we can build
