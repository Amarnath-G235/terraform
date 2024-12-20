variable "instance_names" {
    default = ["mysql","backend","frontend"]
    type = list(string)
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
}