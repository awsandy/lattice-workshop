kubectl apply -f lattice-k8s/rs-gateway.yaml

export LATTICE_DOMAIN_NAME="lattice.io"
export CLUSTER1_NAME=$(terraform output -raw cluster_name)
export VPC2_NAME='LatticeWorkshop Rates VPC'
export VPC2_FILTER="Name=tag:Name,Values='$VPC2_NAME'"
#aws ssm get-parameter --name "/vpclattice/workshop/vpc-clients" --with-decryption --query 'Parameter.Value' --output text 
#aws ssm get-parameter --name "/vpclattice/workshop/vpc-rates" --with-decryption --query 'Parameter.Value' --output text

export ASSETS_HOSTNAME="assets-${CLUSTER1_NAME}"
export CART_HOSTNAME="carts-${CLUSTER1_NAME}"
export CATALOG_HOSTNAME="catalog-${CLUSTER1_NAME}"
export CHECKOUT_HOSTNAME="checkout-${CLUSTER1_NAME}"
export ORDERS_HOSTNAME="orders-${CLUSTER1_NAME}"
export CARTS_HOSTNAME="carts-${CLUSTER1_NAME}"

export ASSETS_FQDN="${ASSETS_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CARTS_FQDN="${CART_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CATALOG_FQDN="${CATALOG_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export CHECKOUT_FQDN="${CHECKOUT_HOSTNAME}.${LATTICE_DOMAIN_NAME}"
export ORDERS_FQDN="${ORDERS_HOSTNAME}.${LATTICE_DOMAIN_NAME}"

echo $CARTS_FQDN
echo $ASSETS_FQDN
echo $CATALOG_FQDN
echo $CHECKOUT_FQDN
echo $ORDERS_FQDN


envsubst < lattice-k8s/rs-assets-http-route-var.yaml | kubectl apply -f -
envsubst < lattice-k8s/rs-cart-http-route-var.yaml | kubectl apply -f -
envsubst < lattice-k8s/rs-catalog-http-route-var.yaml | kubectl apply -f -
#envsubst < lattice-k8s/rs-checkout-http-route-var.yaml | kubectl apply -f -
sleep 120

kubectl get httproute c1-lattice-assets -o json | jq -r '.metadata.annotations' | grep lattice-assigned-domain-name  | cut -f2 -d':' | tr -d ' |"",'

