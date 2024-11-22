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

variable "zone_id" {
    default = "Z1011040F14N5MVPIIUV"
    type    = string
}

variable "domain_name" {
    default = "ukom81s.online"
    type    = string
}