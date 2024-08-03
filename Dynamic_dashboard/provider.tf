terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
# provider "newrelic" {
#    account_id =  4439967
#   api_key    = "NRAK-WFR1MV1M3DTH5CEYKB0B6H73BQS" # Usually prefixed with 'NRAK'
#   region = "US"                    # Valid regions are US and EU
# }