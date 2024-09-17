#Creating EC-2 instance using terraform

resource "aws_instance" "terraform" {
    # Length function will automatically adjust the list of instances which is defined in the variable called "instance_names" so that we don't need to give a numeric value 
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    
    # tags = {
    #     Name = var.instance_names[count.index]
    # }

    tags = merge (
        var.common_tags,
        {
            Name = var.instance_names[count.index]
        }
    )
}

#creating security group
resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_ssh"
    description = "allowing port no 22 for ssh access"

    ingress {
        from_port         = 22
        to_port           = 22
        protocol          = "tcp"
        cidr_blocks       = ["0.0.0.0/0"]
        ipv6_cidr_blocks  = ["::/0"]
    }

    egress {
        from_port         = 0
        to_port           = 0
        protocol          = "-1"
        cidr_blocks       = ["0.0.0.0/0"]
        ipv6_cidr_blocks  = ["::/0"]
    }

    tags = merge(
        var.common_tags,
        {
            Name = "allow_ssh"
        }
    )
}