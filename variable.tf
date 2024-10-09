variable "vpc-cidr_block" {
  default = "10.0.0.0/16"
  description = "VPC CIDR Block"
  type = string
}

variable "public-subnet-1-cidr_block" {
  default = "10.0.0.0/24"
  description = "Public subnet 1CIDR Block"
  type = string
}