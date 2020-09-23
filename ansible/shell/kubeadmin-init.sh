#!/usr/bin/bash

kubeadm init \
--kubernetes-version=v1.19.2 \
--pod-network-cidr=10.244.0.0/16 \
--service-cidr=10.96.0.0/12 \
--apiserver-advertise-address=0.0.0.0 \
--ignore-preflight-errors=Swap \
> /opt/shell/kubeadm-init.log

echo '#!/usr/bin/bash' > /opt/shell/node-join.sh

join_command=$(tail -n 2 /opt/shell/kubeadm-init.log)

join_command_all=${join_command}' --ignore-preflight-errors=Swap'

echo ${join_command_all} | sed 's/\\//g' >> /opt/shell/node-join.sh

exit 0
