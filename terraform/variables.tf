
variable "default_tags" {
    default = {
        "Owner"   = "Nikhil Bangar",
        "Project" = "POC Project"
    }
    description = "Additional resource tags"
    type        = map(string)
}
