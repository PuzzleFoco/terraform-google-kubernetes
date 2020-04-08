/*
 * Created Date: 14.01.2020
 * Author: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Last Modified: 15.01.2020 10:34:11
 * Modified By: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Copyright (c) 2020 msg nexinsure ag
 */


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