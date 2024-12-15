provider "google" {
  credentials = file("ensimagproject1-5dc18948cd88.json")
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    ssh-keys = "yasmine:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCo0kHm40HDP+wDiN2i7RUTe7Sbs4hDRhbrR4OneEO0Mml4syyA9OJH3x9T3mbBBunxIDxn4/7/psuscMe2cMpQNlE93rmHrlU7pKZ6sty8lGrEtEUom/kUk1XkZYZn72675zPKTW3iOF/NJKQRWEPyLgJ2JPpnDjPqwoLPq2rnF7+glqK7IS6mkghS+86LPdFf9WecYcdnod7vhDyvdgx5zvVz9smgSeT7agzeU/4kPDF/33dibq5NunjWOYZp0wlFqS+4T0MPT73S8ceHvW2MiMx1Jcdi51nxuVGV2yDB7icYWA3Al1VS0nJ4ygb/VXz3TYLBxC+MGyii+SlNnTdF1L8Jev3YHVc436BwfsX5y7EvLcJfRlm0JE6KLdZM8OvV/HwU0FEauZI/F9bQOqt9nYrpBG7iE+UE6DgzdrkbAGRCtbaKCdodu4/VLRN7/v/6IjTdfOQdP3MJdSWCq/r8ak2H1kg8u2V6AT/up15Xctm6SCyihu1nwp4NcSpZr/McwUErudG6EELm1Gmo4dcvRVDiYmv1cFP+gPO35eaDehL2Ze8kelVgf5jXxu3XgxxniqbS9jp5CB29Az9ici3Lh18rcZUl252wCXaNDFpus2GS+yvCqdshltRN37CjbKxBkAy+3ZLZQhb+ikfDc7TK9uZd0//h3DjfXAEjFFFMzQ== ubuntu@DESKTOP-JM4IOLG"
  }
}
