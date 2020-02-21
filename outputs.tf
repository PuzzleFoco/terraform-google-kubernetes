output "client_key" {
  value = "${google_container_cluster.primary.kube_config.0.client_key}"
}

output "client_certificate" {
  value = "${google_container_cluster.primary.kube_config.0.client_certificate}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.kube_config.0.cluster_ca_certificate}"
}

output "cluster_username" {
  value = "${google_container_cluster.primary.kube_config.0.username}"
}

output "cluster_password" {
  value = "${google_container_cluster.primary.kube_config.0.password}"
}

output "kube_config" {
  value = "${google_container_cluster.primary.kube_config_raw}"
}

output "host" {
  value = "${google_container_cluster.primary.kube_config.0.host}"
}

output "node_resource_group" {
  value = "${google_container_cluster.primary.node_resource_group}"
}

output "cluster_name" {
  value = "${google_container_cluster.primary.name}"
}