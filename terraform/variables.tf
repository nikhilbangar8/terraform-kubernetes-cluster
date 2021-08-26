
variable "default_tags" {
    default = {
        "Owner"   = "Nikhil Bangar",
        "Project" = "POC Project"
    }
    description = "Additional resource tags"
    type        = map(string)
}

variable "aws_key_pair" {}

variable "master_root_ebs_size" {}
variable "master_instance_type" {}
variable "node_instance_type" {}
variable "node_root_ebs_size" {}

