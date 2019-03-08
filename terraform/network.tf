# VPC ==============================================================
resource "aws_vpc" "vpc01" {
 cidr_block = "10.${var.my_cidr_block}.0.0/16"
 tags {
   Name = "vpc_${var.project}-${var.platform}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }
}

# Subnets ==============================================================
resource "aws_subnet" "subnet01" {
 vpc_id = "${aws_vpc.vpc01.id}"
 cidr_block = "10.${var.my_cidr_block}.0.0/23"
 availability_zone = "${var.region}a"
 map_public_ip_on_launch = true
 tags {
   Name = "subnet_${var.project}-${var.platform}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }
}


# routing ==============================================================
resource "aws_internet_gateway" "gateway01" {
 vpc_id = "${aws_vpc.vpc01.id}"
}

resource "aws_route_table" "route-to-gw01" {
 vpc_id = "${aws_vpc.vpc01.id}"
 route {
 cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_internet_gateway.gateway01.id}"
 }
}

resource "aws_route_table_association" "subnet01" {
 subnet_id = "${aws_subnet.subnet01.id}"
 route_table_id = "${aws_route_table.route-to-gw01.id}"
}
