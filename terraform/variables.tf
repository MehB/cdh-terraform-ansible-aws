# variables ==============================================================

variable "customer" { default = "cdh_cluster_test" }
variable "project" { default = "cdh_cluster" }
variable "platform" { default = "test" }
variable "region" { default = "us-east-1" }
variable "my_cidr_block" { default = "3" }
variable "keyname" { default = "keyname" }
variable "db_username" {default = "username"}
variable "db_password" {default = "password"}

# credentials ==============================================================

provider "aws" {
 access_key = ""
 secret_key = ""
 region = "${var.region}"
}
