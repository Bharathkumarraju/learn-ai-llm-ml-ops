module "state_storage" {
  source = "../modules/terraform-backend"

  aws_kms_alias                       = "trfm-state-storage-bharaths-sg"
  tf_state_storage_bucket_name        = "trfm-state-storage-bharaths-sg"
  aws_account_id                      = data.aws_caller_identity.current.account_id
}

