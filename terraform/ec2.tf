# EC2 ==============================================================
resource "aws_instance" "manager" {
 ami = "ami-02e98f78"
 instance_type = "m3.xlarge"
 key_name = "${var.keyname}"
 availability_zone = "us-east-1a"
 subnet_id = "${aws_subnet.subnet01.id}"
 security_groups = ["${aws_security_group.sg01.id}"]
 associate_public_ip_address = "true"
 root_block_device {
    volume_size = "20"
  }

 tags {
   Name = "manager-${var.project}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }

 ebs_block_device {
   device_name = "/dev/sdb"
   volume_type = "gp2"
   volume_size = "100"
   delete_on_termination = "true"
 }
}


resource "aws_instance" "master" {
 ami = "ami-02e98f78"
 instance_type = "m3.xlarge"
 key_name = "${var.keyname}"
 availability_zone = "us-east-1a"
 subnet_id = "${aws_subnet.subnet01.id}"
 security_groups = ["${aws_security_group.sg01.id}"]
 associate_public_ip_address = "true"
 root_block_device {
    volume_size = "20"
  }
 tags {
   Name = "master-${var.project}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }

 ebs_block_device {
   device_name = "/dev/sdb"
   volume_type = "gp2"
   volume_size = "100"
   delete_on_termination = "true"
 }
}


resource "aws_instance" "worker1" {
 ami = "ami-02e98f78"
 instance_type = "m3.xlarge"
 key_name = "${var.keyname}"
 availability_zone = "us-east-1a"
 subnet_id = "${aws_subnet.subnet01.id}"
 security_groups = ["${aws_security_group.sg01.id}"]
 associate_public_ip_address = "true"
 root_block_device {
    volume_size = "20"
  }

 tags {
   Name = "worker1-${var.project}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }

 ebs_block_device {
   device_name = "/dev/sdb"
   volume_type = "gp2"
   volume_size = "100"
   delete_on_termination = "true"
 }
}


resource "aws_instance" "worker2" {
 ami = "ami-02e98f78"
 instance_type = "m3.xlarge"
 key_name = "${var.keyname}"
 availability_zone = "us-east-1a"
 subnet_id = "${aws_subnet.subnet01.id}"
 security_groups = ["${aws_security_group.sg01.id}"]
 associate_public_ip_address = "true"
 root_block_device {
    volume_size = "20"
  }
 tags {
   Name = "worker2-${var.project}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }

 ebs_block_device {
   device_name = "/dev/sdb"
   volume_type = "gp2"
   volume_size = "100"
   delete_on_termination = "true"
 }
}

resource "aws_instance" "worker3" {
 ami = "ami-02e98f78"
 instance_type = "m3.xlarge"
 key_name = "${var.keyname}"
 availability_zone = "us-east-1a"
 subnet_id = "${aws_subnet.subnet01.id}"
 security_groups = ["${aws_security_group.sg01.id}"]
 associate_public_ip_address = "true"
 root_block_device {
    volume_size = "20"
  }
 tags {
   Name = "worker3-${var.project}"
   Customer = "${var.customer}"
   Platform = "${var.platform}"
 }

 ebs_block_device {
   device_name = "/dev/sdb"
   volume_type = "gp2"
   volume_size = "100"
   delete_on_termination = "true"
 }
}
