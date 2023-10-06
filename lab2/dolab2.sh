terraform apply -auto-approve
snid=$(aws vpc-lattice list-service-networks | jq -r '.items[] | select(.name=="superappsvcnetwork").id')
aws vpc-lattice update-service-network --auth-type AWS_IAM --service-network-identifier $snid
psid=$(aws vpc-lattice list-services | jq -r '.items[] | select(.name=="parking").id')
aws vpc-lattice update-service --auth-type AWS_IAM --service-identifier $psid
