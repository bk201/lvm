- Build image and push, for example:

    ```
    docker build . -t bk201z/csi-driver-lvm-provisioner:dev
    docker push bk201z/csi-driver-lvm-provisioner:dev
    ```

- Edit ds:

    ```
    kubectl edit ds csi-driver-lvm-plugin
    
    ```
    
    Change args to:

    ```
          - args:
            - --drivername=lvm.csi.metal-stack.io
            - --endpoint=unix:///csi/csi.sock
            - --hostwritepath=/etc/lvm
            - --devices=/dev/sd[a-d]
            - --nodeid=$(KUBE_NODE_NAME)
            - --vgname=csi-lvm
            - --namespace=default
            - --provisionerimage=bk201z/csi-driver-lvm-provisioner:dev  <----
            - --pullpolicy=Always                                       <----
    ```
