# kubernetes_service_v1.default__catalog:
resource "kubernetes_service_v1" "default__catalog" {
  metadata {
    annotations = {}
    labels = {
      "app.kuberneres.io/owner"      = "retail-store-sample"
      "app.kubernetes.io/component"  = "service"
      "app.kubernetes.io/instance"   = "catalog"
      "app.kubernetes.io/managed-by" = "Helm"
      "app.kubernetes.io/name"       = "catalog"
      "helm.sh/chart"                = "catalog-0.0.1"
    }
    name      = "catalog"
    namespace = "default"
  }

  spec {
    allocate_load_balancer_node_ports = true
    cluster_ip                        = "172.20.75.50"
    cluster_ips = [
      "172.20.75.50",
    ]
    external_ips            = []
    internal_traffic_policy = "Cluster"
    ip_families = [
      "IPv4",
    ]
    ip_family_policy            = "SingleStack"
    load_balancer_source_ranges = []
    publish_not_ready_addresses = false
    selector = {
      "app.kuberneres.io/owner"     = "retail-store-sample"
      "app.kubernetes.io/component" = "service"
      "app.kubernetes.io/instance"  = "catalog"
      "app.kubernetes.io/name"      = "catalog"
    }
    session_affinity = "None"
    type             = "ClusterIP"

    port {
      name        = "http"
      node_port   = 0
      port        = 80
      protocol    = "TCP"
      target_port = "http"
    }
  }

  wait_for_load_balancer = true
  timeouts {}
}
