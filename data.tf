/******************************************/
# vpc
/******************************************/
data "aws_vpc" "info_vpc" {
  filter {
    name = "tag:Name"
    values = [ "${var.vpc_name}" ]
  }
}


/******************************************/
# public subnet
/******************************************/
data "aws_subnet" "info_subnet_public_1a" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_public_1a_name}" ]
  }
}

data "aws_subnet" "info_subnet_public_1b" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_public_1b_name}" ]
  }
}



data "aws_subnet" "info_subnet_public_1c" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_public_1c_name}" ]
  }
}


/******************************************/
# private subnet
/******************************************/
data "aws_subnet" "info_subnet_private_1a" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_private_1a_name}" ]
  }
}


data "aws_subnet" "info_subnet_private_1b" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_private_1b_name}" ]
  }
}


data "aws_subnet" "info_subnet_private_1c" {
  vpc_id = data.aws_vpc.info_vpc.id
  filter {
    name = "tag:Name"
    values = [ "${var.subnet_private_1c_name}" ]
  }
}





