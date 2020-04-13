provider "google" {
    credentials = file(var.filename)
    region  = "europe-west3"
    zone    = "europe-west3-a"
}

module "gke" {
    source = "../../terraform-google-kubernetes"

    gke_cluster_name    = "examplecluster"
    location            = "europe-west3"
    project             = var.project_id
    min_master_version  = "1.15.9-gke.24"
}