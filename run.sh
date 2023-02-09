cd tf/
sudo terraform apply --auto-approve
cd ../ansible/
sudo ansible-playbook main.yml -i hosts
cd ..