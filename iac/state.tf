terraform {
  backend "s3" {
    bucket                      = "example-com-tofu"
    endpoints                   = { s3 = "https://hel1.your-objectstorage.com" }
    key                         = "terraform.tfstate"
    region                      = "main"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    use_path_style              = true
    skip_s3_checksum            = true
  }
}
