terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.rg_location

}

resource "aws_resourcegroups_group" "monday_rg" {
  name = var.rg_name
  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "Name",
      "Values" : ["monday_app"]
    }
  ]
}
JSON
  }
}

resource "aws_instance" "monday_ec2" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type

  tags = {
    "Name" = var.app_name
  }

}