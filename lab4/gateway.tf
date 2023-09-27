resource "kubernetes_namespace_v1" "lattice-gateway" {
  metadata {
    name = "aws-application-networking-system"
    labels = {
      control-plane = "gateway-api-controller"
    }
    
  }
}

## IRSA
## iam-sa.tf







# create service account - with annotation to aws_iam_policy.lattice-inline-policy

resource "kubernetes_service_account_v1" "gateway-api-controller" {
  metadata {
    name = "gateway-api-controller"
    namespace = kubernetes_namespace_v1.lattice-gateway.metadata[0].name
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.lattice-inline-policy.arn
    }
  }

}


## helm

#helm   upgrade --install gateway-api-controller \
#   oci://public.ecr.aws/aws-application-networking-k8s/aws-gateway-controller-chart\q
#   --set=aws.region="$AWS_REGION" --set=serviceAccount.create=false --namespace aws-application-networking-system


resource "helm_release" "gateway-api-controller" {
  name       = "gateway-api-controller"
  repository = "oci://public.ecr.aws/aws-application-networking-k8s"
  #repository = "https://aws.github.io/eks-charts"
  chart      = "aws-gateway-controller-chart"
  namespace  = kubernetes_namespace_v1.lattice-gateway.metadata[0].name
  version = "v0.0.16"

  set {
    name  = "clusterName"
    value = module.eks.cluster_name
  }

  set {
    name  = "serviceAccount.name"
    value = kubernetes_service_account_v1.gateway-api-controller.metadata[0].name
  }


set {
    name  = "serviceAccount.create"
    value = false
  }

set {
    name  = "settings.aws.clusterEndpoint"
    value = module.eks.cluster_endpoint
}


}



resource "kubernetes_manifest" "gateway-class" {
  depends_on = [helm_release.gateway-api-controller]
  manifest = yamldecode(file("./gatewayclass.yaml"))
}

