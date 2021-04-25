module "budget" {
  source = "./budget"
  limit  = var.limit


}
module "sns" {
  source = "./sns"

}

module "ec2" {
  source = "./ec2"

}
