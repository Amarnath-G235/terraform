variable "instance_names" {
    default = ["mysql","Backend","Frontend"]
    type = list(string)
}

variable "instance_type" {
    default = "t3.micro"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z1011040F14N5MVPIIUV"
}

variable "domain_name" {
    default = "ukom81s.online"
}