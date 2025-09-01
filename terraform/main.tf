module "aft_account_request" {
  source = "./modules/aft-account-request"
  count = 7

  control_tower_parameters = {
    AccountName               = "hyunsukouser20250901${count.index+1}"
    AccountEmail              = "hyunsukouser20250901${count.index}@example.com"
    SSOUserEmail              = "iamhansko@gmail.com"
    SSOUserFirstName          = "AWS"
    SSOUserLastName           = "User${count.index}"
    ManagedOrganizationalUnit = "Sandbox" # Sandbox OU
  }

  change_management_parameters = {
    change_requested_by = "Terraform"
    change_reason       = "User${count.index} Account Provisioning"
  }
}