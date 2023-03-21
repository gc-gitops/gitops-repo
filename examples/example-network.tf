#Creates small subnet in the VPC specified later
resource "google_compute_subnetwork" "gcp_subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_cidr
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = false
}

#Create VPC network
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = "false"
}

resource "google_compute_firewall" "default" {
  name     = "web allow"
  priority = 2

  allow {
    protocol = null
    ports    = ["443"]
  }
  direction     = "INGRESS"
  disabled      = false
  network       = google_compute_network.vpc_network.name
  project       = var.project_id
  source_ranges = ["38.165.222.110/32"]
  target_tags   = [var.linux_tag]
}
