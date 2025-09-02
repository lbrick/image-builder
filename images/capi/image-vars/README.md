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

### containerd sha256 needed
https://github.com/containerd/containerd/releases/download/VERSION/cri-containerd-cni-VERSION-linux-amd64.tar.gz.sha256sum


## Running a build

ON_ERROR_ASK=1 PACKER_VAR_FILES=./image-vars/rocky-9-containerd-v1.32.7.json make build-openstack-rockylinux-9

ON_ERROR_ASK=1 PACKER_VAR_FILES=./image-vars/rocky-9-containerd-hpc-nvidia-v1.33.3.json make build-openstack-rockylinux-9

## Update Image properties

openstack image set --property hw_disk_bus=scsi IMAGE_ID
openstack image set --property hw_scsi_model=virtio-scsi IMAGE_ID

openstack image set OLD_IMAGE_ID --name IMAGE_NAME.TODAYS_DATE
openstack image set --community OLD_IMAGE_ID

openstack image set IMAGE_ID --name NAME_WITHOUT_RC

openstack image set IMAGE_ID --public

a828c94f-5b18-415d-82c6-48cc6ede7380