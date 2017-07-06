terraform {
  backend "s3" {
    bucket = "tfuar-remote-state"
    key    = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
}