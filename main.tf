resource "google_container_cluster" "primary" {
    name     = var.gke_cluster_name
    location = var.location
    project  = var.project

    remove_default_node_pool    = true
    initial_node_count          = 1

    master_auth {

        username = "admin123"
        password = "testmussleider16zeichenlangsein"

        client_certificate_config {
            issue_client_certificate = false
        }
    }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
    name        = "${var.gke_cluster_name}-node-pool"
    location    = var.location
    cluster     = google_container_cluster.primary.name
    node_count  = var.node_count
    project     = var.project

    node_config {
        preemptible     = true
        machine_type    = var.machine_type

        metadata = {
            disable-legacy-endpoints = "true"
        }

        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]
    }
}