resource "aws_security_group" "sg01" {
  name = "sg_cdh_cluster"
  tags {
    Name = "sg-${var.project}_${var.platform}"
    Customer = "${var.customer}"
    Platform = "${var.platform}"
  }
  description = "SSH, HTTP CONNECTION INBOUD"
  vpc_id = "${aws_vpc.vpc01.id}"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
