# output "first_arn" {
#   value       = aws_iam_user.example[0].arn
#   description = "The ARN for the first user"
# }

# output "all_arns" {
#   value       = aws_iam_user.example[*].arn
#   description = "The ARNs for all users"
# }

# output "user_arns" {
#   value       = module.users[*].user_arn
#   description = "The ARNs of the created IAM users"
# }

# output "all_users" {
#   value = aws_iam_user.example
# }

# output "all_arns" {
#   value = values(aws_iam_user.example)[*].arn
# }

# moduleのoutputを参照
output "user_arns" {
  value       = values(module.users)[*].user_arn
  description = "The ARNs of the created IAM users"
}
