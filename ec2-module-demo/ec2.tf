module "ec2" {
    source = "../terraform-aws-ec2"
    ami_id = var.ami_something
    instance_type = "t3.medium"
    security_group_ids = ["sg-0de47c9501265bafc"]
}