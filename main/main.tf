
module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.vpc.subnet_id
  ami_id        = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

module "s3" {
  source = "./modules/s3"
}
