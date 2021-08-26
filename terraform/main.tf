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
  profile = "tfuser"
  region  = "eu-west-1"
}

data "aws_ami" "ubuntu_base" {
  most_recent = true
  #name_regex       = "^myami-\\d{3}"
  owners = ["099720109477"]
  #owners           = ["self"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_instance" "kubernetes-master" {
  ami           = data.aws_ami.ubuntu_base.image_id
  instance_type = "t3.large"

  tags = merge(
    var.default_tags,
    {
      "Name" = "Kubernetes-Master"
    }
  )
}

resource "aws_instance" "kubernetes-node" {
  count         = 2
  ami           = data.aws_ami.ubuntu_base.image_id
  instance_type = "t3.medium"

  tags = merge(
    var.default_tags,
    {
      "Name" = "Kubernetes-node-${count.index + 1}"
    }
  )
}