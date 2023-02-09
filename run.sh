cd tf/
sudo terraform init
sudo terraform apply --auto-approve
cd ../ansible/
sleep 2
sudo ansible-playbook main.yml -i hosts
cd ..