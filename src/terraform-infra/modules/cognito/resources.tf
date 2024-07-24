resource "random_password" "master_password" {
  count = 2
  length  = 16
  special = true
  numeric = true
  min_lower = 1
  min_numeric = 1
  min_special = 1
  min_upper = 1
}
