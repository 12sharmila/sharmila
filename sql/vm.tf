resource "google_compute_instance" "instance-45" {
  name         = "instance-45"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {

    access_config {
      
      
    }
  }
  

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = file("apache.sh")  
}
/*resource "random_id" "db_name_suffix" {
  byte_length = 4


locals {
  onprem = ["35.188.170.73"]
}*/

