module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  tags       = { Environment = "dev" }
}

module "public_subnet" {
  source              = "../../modules/subnet"
  vpc_id              = module.vpc.vpc_id
  cidr_block          = "10.0.1.0/24"
  availability_zone   = "ap-northeast-2a"
  map_public_ip_on_launch = true
  tags                = { Environment = "dev" }
}

module "alb" {
  source            = "../../modules/alb"
  name              = "dev-alb"
  subnets           = [module.public_subnet.subnet_id]
  security_group_id = aws_security_group.alb_sg.id
  certificate_arn   = var.certificate_arn
  target_port       = 80
  vpc_id            = module.vpc.vpc_id
  tags              = { Environment = "dev" }
}

resource "aws_security_group" "alb_sg" {
  name        = "dev-alb-sg"
  description = "Allow HTTPS traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
