# NeSI Related Image variables

## crictl release versions
https://github.com/kubernetes-sigs/cri-tools/releases

## kubernetes release versions
https://github.com/kubernetes/kubernetes/releases

## cri-o release versions
https://github.com/cri-o/cri-o/releases

## containerd release versions
https://github.com/containerd/containerd/releases
https://containerd.io/releases/#kubernetes-support


## Running a build

ON_ERROR_ASK=1 PACKER_VAR_FILES=./image-vars/rocky-9-crio-v1.28.14.json make build-openstack-rockylinux-9

## Update Image properties

openstack image set --property hw_disk_bus=scsi IMAGE_ID
openstack image set --property hw_scsi_model=virtio-scsi IMAGE_ID
openstack image unset --property signature_verified IMAGE_ID

openstack image set IMAGE_ID --name NAME_WITHOUT_RC

openstack image set IMAGE_ID --public