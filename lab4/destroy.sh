export AWS_REGION="eu-west-1"


export LATTICE_DOMAIN_NAME="lattice.io"

export CLOUD9_INSTANCE_TYPE="t3.small"

export CLUSTER1_NAME="c1-lattice"
export TF_VAR_CLUSTER1_NAME=$CLUSTER1_NAME
export VPC1_NAME='LatticeWorkshop Clients VPC'
export VPC1_FILTER="Name=tag:Name,Values='$VPC1_NAME'"

export CLUSTER2_NAME="c2-lattice"
export TF_VAR_CLUSTER2_NAME=$CLUSTER2_NAME
export VPC2_NAME='LatticeWorkshop Rates VPC'
export VPC2_FILTER="Name=tag:Name,Values='$VPC2_NAME'"

export ASSETS_HOSTNAME="assets-${CLUSTER1_NAME}"
export CART_HOSTNAME="cart-${CLUSTER1_NAME}"
export CATALOG_HOSTNAME="catalog-${CLUSTER1_NAME}"
export CHECKOUT_HOSTNAME="checkout-${CLUSTER2_NAME}"

export ASSETS_FQDN="${ASSETS_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CART_FQDN="${CART_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CATALOG_FQDN="${CATALOG_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CHECKOUT_FQDN="${CHECKOUT_HOSTNAME}.${LATTICE_DOMAIN_NAME}"

hzi=$(aws route53 list-hosted-zones | jq -r '.HostedZones[] | select(.Name=="lattice.io.").Id')
export SVC_FQDN=$ASSETS_FQDN
export LATTICE_FQDN="${ASSETS_LATTICE_FQDN}"
envsubst < scripts/cname.json > assets-dns.json
cmd=$(echo "sed -i'.orig' -e 's/CREATE/DELETE/g' assets-dns.json")
echo "$cmd"
eval $cmd

aws route53 change-resource-record-sets --hosted-zone-id $hzi --region $AWS_REGION --change-batch file://assets-dns.json

export SVC_FQDN=$CARTS_FQDN
export LATTICE_FQDN=${CART_LATTICE_FQDN}
envsubst < scripts/cname.json > cart-dns.json
cmd=$(echo "sed -i'.orig' -e 's/CREATE/DELETE/g' cart-dns.json")
echo "$cmd"
eval $cmd
aws route53 change-resource-record-sets --hosted-zone-id $hzi --region $AWS_REGION --change-batch file://cart-dns.json

export SVC_FQDN="$CATALOG_FQDN"
export LATTICE_FQDN="${CATALOG_LATTICE_FQDN}"
envsubst < scripts/cname.json > catalog-dns.json
cmd=$(echo "sed -i'.orig' -e 's/CREATE/DELETE/g' catalog-dns.json")
echo "$cmd"
eval $cmd
aws route53 change-resource-record-sets --hosted-zone-id $hzi --region $AWS_REGION --change-batch file://catalog-dns.json


aws route53 delete-hosted-zone --id $hzi

echo "deleting assets service"
envsubst < lattice-k8s/rs-assets-http-route-var.yaml | kubectl delete -f -
echo "deleting carts service"
envsubst < lattice-k8s/rs-cart-http-route-var.yaml | kubectl delete -f -
echo "deleting catalog service"
envsubst < lattice-k8s/rs-catalog-http-route-var.yaml | kubectl delete -f -
echo "deleting k8s gateway"
kubectl delete -f lattice-k8s/rs-gateway.yaml
echo "deleting sample app"
kubectl delete -f deploy.yaml



