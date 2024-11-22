variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type    = string
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Backend"
        Environment = "DEV"
        Project = "Expense"
        DevOps_Engineer = "Amarnath"
    }
}

variable "sg_name" {
    type = string
    default = "allow_sshh"
}

variable "sg_description" {
    type = string
    default = "allowing port no:22 for ssh access"
}

variable "ingress_from_port" {
    type = number
    default = 22
}

variable "ingress_to_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
    type = list(string)
    default = ["::/0"]
}
