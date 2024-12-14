variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z1011040F14N5MVPIIUV"
}

variable "domain_name" {
    default = "ukom81s.online"
}