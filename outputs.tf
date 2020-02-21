output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}

output "cluster_username" {
  value = "${google_container_cluster.primary.master_auth.0.username}"
}

output "cluster_password" {
  value = "${google_container_cluster.primary.master_auth.0.password}"
}

output "master_auth" {
  value = "${google_container_cluster.primary.master_auth_raw}"
}

output "host" {
  value = "${google_container_cluster.primary.master_auth.0.host}"
}

output "node_resource_group" {
  value = "${google_container_cluster.primary.node_resource_group}"
}

output "cluster_name" {
  value = "${google_container_cluster.primary.name}"
}