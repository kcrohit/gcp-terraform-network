######################################################
  ## Create Network name as my-network ##
######################################################
resource "google_compute_network" "my-network" {
  name = var.network_name
  auto_create_subnetworks = "false"
}

######################################################
  ## Create 3 subnet                   ##
######################################################

resource "google_compute_subnetwork" "my-network-vpc" {
      name = "subnet-${count.index}"
      ip_cidr_range = var.cidr[count.index]
      region = "us-west1"
      count = length(var.cidr)
      network = var.network_name
    }

######################################################
  ## Output of subnet " name = cidr " ##
######################################################

  output "subnet_name" {
    value = "${formatlist(
    "subnet is %s and ip is %s",
    google_compute_subnetwork.my-network-vpc.*.name,
    google_compute_subnetwork.my-network-vpc.*.ip_cidr_range
  )}"
   