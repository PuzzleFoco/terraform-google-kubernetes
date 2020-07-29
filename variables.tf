variable "gke_cluster_name" {
    description = "Name of the GKE Cluster"
    type        = string
}

variable "location" {
    description = "The Azure location where all ressources in this example should be created"
    type        = string
}


variable "node_count" {
    description = "The count of VMs for the GKE"
    default     = 1
}

variable "machine_type" {
    description = "The size of the VMs"
    default     = "n1-standard-1"
}

variable "project" {
    type = string
}

variable "min_master_version" {
    description = "The minimum version of the master"
    type        = string
    default     = "1.16.9-gke.6"
}

variable "username" {
    description = "username of the kubernetes cluster"
    type = string
    default = "admin123"
}

variable "password" {
    description = "password of the kubernetes cluster"
    type = string
    default = "passwordneed16zeichen"
}