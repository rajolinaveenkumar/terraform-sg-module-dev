resource "aws_security_group" "main_sg" {
  name        = local.final_sg_name
  description = var.description
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    var.bastion_sg_tags,
    var.mysql_sg_tags,
    var.backend_sg_tags,
    var.frontend_sg_tags,
    var.vpn_sg_tags,
    var.app_alb_sg_tags,
    {
            Name            =  local.final_sg_name
            Module-Owner    =  "Naveen Rajoli"
            Module          =  "Security Group Module"
            Terraform       = true
    }
  )
}