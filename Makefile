default:
	echo "No Action"

apply:
	#rm -rf .terraform
	terraform init
	terraform apply -auto-approve

destroy:
	terraform destroy -auto-approve