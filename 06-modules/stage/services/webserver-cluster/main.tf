provider "aws" {
  region = "us-east-2"
}


module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name        = "webservers-stage"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
  remote_state_bucket = "terraform-states-demo-ls"

  instance_type = "m4.large"
  min_size      = 2
  max_size      = 10
}

output "alb_dns_name" {
  value = module.webserver.cluster.alb_dns_name
  description = "Load balancer domain name"
}

