terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  account  = "fd97272.us-east4.gcp.snowflakecomputing.com"
  user = "rwnjaaj-lh51940.snowflakecomputing.com"
  role     = "SYSADMIN"


  # If using private key authentication
  private_key_path = "/Users/mosheperez/.ssh/snowflake_tf_snow_key.p8"
}

resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}

