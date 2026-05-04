
module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.vpc.subnet_id
  ami_id        = "ami-02eb0c2388ee999f9"
  instance_type = "t3.micro"
}

module "s3" {
  source = "./modules/s3"
}
