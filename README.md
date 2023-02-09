# Ansible Architecture in Docker

### **How to run** -
```
git clone --recurse-submodules https://github.com/srjnm/ansible-arch.git
cd ./ansible-arch/
sudo chmod 777 ./*.sh
./run.sh
```

localhost:3000, localhost:3001, localhost:3002 are mapped to the nginx server of the managed nodes.

### **How to destroy the resources** -
```
sudo chmod 777 ./*.sh
./destroy.sh
```

## How it works?
Terraform -

* Creates control node, 3 managed nodes from a list of names
* Uploads html file to managed nodes
* Creates inventory file for ansible to use

Ansible -

* Pings the control node
* Sets up playbook, inventory and config file on the control node
* Runs the playbook on control node which pings the managed nodes