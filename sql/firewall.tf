resource "google_compute_firewall" "allow-http" {

  name    = "firewall12"

  network = google_compute_network.vpc1.name

  direction  = "INGRESS"

  priority  = 1000




  allow {

    protocol = "tcp"

    ports = ["22","80"]

   

  }

 

  source_ranges  = ["0.0.0.0/0"]

}

resource "google_compute_network" "vpc1" {

  name = "network12"

  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "subnet-2" {

  name          = "subnet-2"

  network       = google_compute_network.vpc1.name

  ip_cidr_range = "10.10.2.0/24"

  region        = "us-central1"

}
