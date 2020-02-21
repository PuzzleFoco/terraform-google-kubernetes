/*
 * Created Date: 15.01.2020
 * Author: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Last Modified: 15.01.2020 12:11:57
 * Modified By: Fabius Engel (fabius.engel@msg.group)
 * -----
 * Copyright (c) 2020 msg nexinsure ag
 */

provider "google" {
    credentials = file("testproject-ef39e40d4d53.json")
    region  = "europe-west3"
    zone    = "europe-west3-a"
}

module "gke" {
    source = "../../terraform-google-kubernetes"

    gke_cluster_name    = "examplecluster"
    location            = "europe-west3"
    project             = "testproject-268907"
}