resource "random_password" "master_password" {
  count = 2
  length  = 16
  special = true
}
