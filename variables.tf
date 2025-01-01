variable "region" {
  default = "ap-south-1"
}

variable "lt_imageid" {
  default = "ami-053b12d3152c0cc71"
}

variable "lt_instancetype" {
  default = "t2.micro"
}

variable "lt_minsize" {
  default = 1
}

variable "lt_maxsize" {
  default = 4
}

variable "lt_desiredsize" {
  default = 1
}

variable "lt_subnetid" {
  default = ["subnet-0d73c017a9af7f293"]
}

