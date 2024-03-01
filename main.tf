provider "google" {
  project = "neat-scheme-409019"
  region  = "europe-central2"
  zone    = "europe-central2-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance-changed"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
