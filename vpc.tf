module "network" {
  source  = "app.terraform.io/jsremba-training/network/google"
  version = "3.2.2"
  # insert required variables here
  project_id = var.project
  network_name = "jsremba1-network"
 
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}