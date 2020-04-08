resource "google_container_cluster" "primary" {
    name     = var.gke_cluster_name
    location = var.location
    project  = var.project

    remove_default_node_pool    = false
    initial_node_count          = var.node_count

    master_auth {

        username = "admin123"
        password = "passwordneed16zeichen"

        client_certificate_config {
            issue_client_certificate = true
        }
    }

    node_config {
        preemptible     = true
        machine_type = var.machine_type

        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]
        
        metadata = {
            disable-legacy-endpoints = "true"
        }
    }
}