module "DashboardModule"{
  source = "./Tf_dashboard"
  dashboardTF =  var.dashboardTF
  account_id = var.account_id
  api_key = var.api_key
  }


module "DashboardModule2"{
  source = "./Dynamic_dashboard"
  dashboard = var.dashboard
  page = var.page
  account_id = var.account_id
  api_key = var.api_key

}
  


#   variable {
#       default_values     = ["value"]
#       is_multi_selection = true
#       item {
#         title = "item"
#         value = "ITEM"
#       }
#       name = "variable"
#       nrql_query {
#         account_id = 4439967
#         query       = "FROM Transaction SELECT average(duration) FACET appName"
#       }
#       replacement_strategy = "default"
#       title                = "title"
#       type                 = "nrql"
#   }

