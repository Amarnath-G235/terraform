variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend"]
    description = "description"
}

variable "domain_name" {
    default = "ukom81s.online"
}

variable "zone_id" {
    default = "Z1011040F14N5MVPIIUV"
}