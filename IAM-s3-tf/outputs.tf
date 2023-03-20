output "user_arn" {
  value = "${aws_iam_user.newusers.0.arn}"
}
output "user" {
  value = "${aws_iam_user.newusers.1.arn}"
}
# output "access_key1" {
#   value = "${aws_iam_user.newusers.0.access_key}"
# }
# output "secret_key1" {
#   value = "${aws_iam_user.newusers.0.secret_key}"
  
# }
# output "access_key2" {
#   value = "${aws_iam_user.newusers.1.access_key}"
# }
# output "secret_key2" {
#   value = "${aws_iam_user.newusers.1.secret_key}"
  
# }