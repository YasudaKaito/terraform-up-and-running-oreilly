provider "aws" {
  region = "us-east-2"
}

# countの例
# resource "aws_iam_user" "example" {
#   count = length(var.user_names)
#   name  = var.user_names[count.index]
# }

# countを使用しモジュールに引数user_nameを渡す
# module "users" {
#   source    = "../../../modules/landing-zone/iam-user"
#   count     = length(var.user_names)
#   user_name = var.user_names[count.index]
# }

# for_eachの例
# resource "aws_iam_user" "example" {
#   for_each = toset(var.user_names)
#   name     = each.value
# }

# for_each + module で引数 user_name を渡す
module "users" {
  source    = "../../../modules/landing-zone/iam-user"
  for_each  = toset(var.user_names)
  user_name = each.value
}
