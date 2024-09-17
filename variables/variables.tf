# 1. command line
# 2. terraform.tfvars
# 3. environment variables, TF_VAR_your_variable_name
# 4. default
# 5. prompt

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is AMI ID of RHEL-9 for devops practice"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port no 22 for ssh access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}