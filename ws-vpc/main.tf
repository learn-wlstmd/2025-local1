module "vpc" {
  source = "./modules"

  vpc_name = local.vpc.name
  vpc_cidr = local.vpc.cidr

  public_subnet_a_name  = "ws-pub-a"
  public_subnet_a_cidr  = "10.101.0.0/24"

  public_subnet_c_name  = "ws-pub-c"
  public_subnet_c_cidr  = "10.101.2.0/24"

  private_subnet_a_name =  "ws-priv-a"
  private_subnet_a_cidr = "10.101.3.0/24"

  private_subnet_c_name =  "ws-priv-c"
  private_subnet_c_cidr = "10.101.5.0/24"

  igw_name = "ws-igw"

  nat_a_name = "ws-natgw-a"
  nat_c_name = "ws-natgw-c"

  public_rt_name = "ws-pub-rt"
  private_a_rt_name = "ws-priv-rt-a"
  private_c_rt_name = "ws-priv-rt-c"
}