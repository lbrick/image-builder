# NeSI Related Image variables

## crictl release versions
https://github.com/kubernetes-sigs/cri-tools/releases

## kubernetes release versions
https://github.com/kubernetes/kubernetes/releases

## cri-o release versions
https://github.com/cri-o/cri-o/releases


## Running a build

ON_ERROR_ASK=1 PACKER_VAR_FILES=./image-vars/rocky-9-crio-v1.28.14.json make build-openstack-rockylinux-9