terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
provider "newrelic" {
   account_id =  var.account_id
  api_key    = var.api_key # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}