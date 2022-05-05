variable "aws_region" {
  default = "us-east-1"
}

variable "s3_devopsbootcamp_acl" {
  default = "private"
}

variable "aws_tags" {
  type = map(string)

  default = {
    env         = "hml"
    service     = "website"
    owner       = "zandler-oliveira"
    cost-center = "CTO"
  }
}
