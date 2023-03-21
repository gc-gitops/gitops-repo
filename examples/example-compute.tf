#Creates VM (technically doesn't have to be linux by the defaults are linux, it also assigns a resource policy of null by default)
resource "google_compute_instance" "placeholder-linux-vm" {
  name                      = var.linux_vm_name
  machine_type              = var.machine_type
  zone                      = var.project_zone
  allow_stopping_for_update = false
  tags                      = [var.linux_tag]
  labels = {
    "os" = var.os_label
  }

  boot_disk {
    initialize_params {
      image = var.linux_os
      size  = var.vm_size
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    subnetwork = var.subnet_name
  }

  service_account {
    email  = google_service_account.gce-svc-account.email
    scopes = ["cloud-platform"]
  }
}

resource "google_service_account" "gce-svc-account" {
  account_id   = var.gce_svc_account
  display_name = "GCE Service Account"
}
