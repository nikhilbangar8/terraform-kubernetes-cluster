default_tags =  {
    "Owner"   = "Nikhil Bangar",
    "Project" = "terraform_kubernetes_NB"
}

aws_key_pair = "kub-cluster"

master_instance_type = "t3.large"
master_root_ebs_size = 50
node_instance_type = "t3.medium"
node_root_ebs_size = 30