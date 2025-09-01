module "aft_account_request" {
  source = "./modules/aft-account-request"
  count = 7

  control_tower_parameters = {
    AccountName               = "user${count.index+1}"
    AccountEmail              = "user${count.index}@example.com"
    SSOUserEmail              = "user${count.index}@example.com"
    SSOUserFirstName          = "AWS"
    SSOUserLastName           = "User${count.index}"
    ManagedOrganizationalUnit = "Root" # Root OU
  }

  change_management_parameters = {
    change_requested_by = "Terraform"
    change_reason       = "User${count.index} Account Provisioning"
  }
}