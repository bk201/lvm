FROM ghcr.io/metal-stack/csi-driver-lvm-provisioner:v0.5.2

COPY lvm.conf /etc/lvm/lvm.conf
