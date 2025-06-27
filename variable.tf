
variable "project_name" {

}

variable "environment" {

}

variable "sg_name" {

}

variable "common_tags" {

}

variable "description" {

}

variable "vpc_id" {

}


variable "bastion_sg_tags" {
    default = {}
}

variable "mysql_sg_tags" {
    default = {}
}

variable "backend_sg_tags" {
    default = {}
}

variable "frontend_sg_tags" {
    default = {}
}

variable "app_alb_sg_tags" {
    default = {}
}

variable "vpn_sg_tags" {
    default = {}
}