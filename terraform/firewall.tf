# firewall.tf

# Define firewall rule to allow both TCP and UDP traffic on ports 80 and 8080
resource "google_compute_firewall" "allow_http_8081" {
  name    = "allow-ports-8081"
  network = "default" # Default VPC network

  allow {
    protocol = "tcp"
    ports    = ["8081"]
  }

  allow {
    protocol = "udp"
    ports    = ["8081"]
  }

  direction = "INGRESS" # Incoming traffic
  priority  = 999       # Priority (lower numbers are higher priority)
  # target_tags = ["jenkins-agent"] # Apply to instances with the "jennis-server" tag
  target_tags = [] # This applies to all instances in the network
  description = "Allow both TCP and UDP traffic on ports 8081"

  # Allow traffic from any source IP (0.0.0.0/0 means all IPs)
  source_ranges = ["0.0.0.0/0"]


}
