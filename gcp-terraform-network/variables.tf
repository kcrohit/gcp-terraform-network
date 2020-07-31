variable "project_id" {
  default = "my-project"
  description = "The project ID to host the network in"
}

variable "network_name" {
  type = string
  default = "my-network"
  description = "The name of the VPC network being created"
}

variable "cidr" {
    default = [ "10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
    
}
