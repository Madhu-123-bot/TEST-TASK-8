provider "aws" {
  region = var.region
}

resource "aws_launch_template" "example" {
  name = "example-lt"
  image_id = var.lt_imageid
  instance_type = var.lt_instancetype
 
}

resource "aws_autoscaling_group" "example" {
  launch_template {
    id = aws_launch_template.example.id
    version = "$Latest"
  }
  min_size = var.lt_minsize
  max_size = var.lt_maxsize
  desired_capacity = var.lt_desiredsize
  vpc_zone_identifier = var.lt_subnetid

  tag {
    key = "Name"
    value = "Terraform-ASG"
    propagate_at_launch = true
  }
}


