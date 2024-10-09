# Create VPC
# terraform aws create vpc
resource "aws_vpc" "vpc" {
  cidr_block              = "${var.vpc-cidr_block}"
  instance_tenancy        = "default"
  enable_dns_hostnames    =  true

  tags      = {
    Name    = "Test VPC"
  }
}

# Create Internet Gateway and Attach it to VPC
# terraform aws create internet gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id    = aws_vpc.vpc.id

  tags      = {
    Name    = "Test internet Gatway"
  }
}


# Create Public Subnet 1
# terraform aws create subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = ws_vpc.vpc.id
  cidr_block              = "${var.public-subnet-1-cidr_block}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags      = {
    Name    = "public subnet 1"
  }
}