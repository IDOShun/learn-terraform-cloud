
resource "google_compute_network" "default" {
  name                    = "dev-vpc"
  auto_create_subnetworks = false
  mtu                     = 1500
}

resource "google_compute_subnetwork" "default" {
  name                       = "subnetwork"
  network                    = google_compute_network.default.self_link
  ip_cidr_range              = "100.64.0.0/16"
  region                     = "asia-northeast1"
  stack_type                 = "IPV4_IPV6"
  ipv6_access_type           = "EXTERNAL"
}
