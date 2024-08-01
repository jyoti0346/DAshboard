variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}

variable "dashboardTF" {
  type = map(object({
    name_dashboard = string
    page           = string
    Billboardtitle1 = string
    row1           = number
    column1        = number
    width1         = number
    height1        = number
    query_Billboard = string
    Billboardtitle2 = string
    row2            = number
    column2         = number
    height2         = number
    width2          = number
    query_Billboard2 = string
    Bartitle1        = string
    row3             = number
    column3          = number
    height3          = number
    width3           = number
    query_bar        = string
    Bartitle2        = string
    row4             = number
    column4          = number
    width4           = number
    height4          = number
    query_bar2       = string
    line             = string
    row5             = number
    column5          = number
    height5          = number
    width5           = number
    query_line       = string
    line2            = string
    row6             = number
    column6          = number
    width6           = number
    height6          = number
    query_line2      = string
    markdown         = string
    row7             = number
    column7          = number
    width7           = number
    height7          = number
    text_markdown    = string
    markdown2        = string
    row8             = number
    column8          = number
    width8           = number
    height8          = number
    text_markdown2   = string
    table            = string
    row9             = number
    column9          = number
    width9           = number
    height9          = number
    query_table      = string
    table2           = string
    row10            = number
    column10         = number
    width10          = number
    height10         = number
    query_table2     = string
 




    
  
  }))
}


#   default = {
#     markdown = {
#       visualization = "markdown"
#       title         = "Markdown Widget with Embedded NRQL"
#       nrql          = "## Dashboard Summary\n\n**Total Transactions:** `{{#nrql}}SELECT count(*) FROM Transaction SINCE 1 hour ago{{/nrql}}`\n\n**Average Duration:** `{{#nrql}}SELECT average(duration) FROM Transaction SINCE 1 hour ago{{/nrql}}`\n\n**Error Rate:** `{{#nrql}}SELECT percentage(count(*), WHERE error IS true) FROM Transaction SINCE 1 hour ago{{/nrql}}`"
#       row           = 1
#       column        = 1
#       width         = 4
#       height        = 3
#     }
#     billboard = {
#       visualization = "billboard"
#       title         = "Billboard Widget"
#       nrql          = "SELECT count(*) FROM Transaction WHERE appName = 'YourAppName'"
#       row           = 1
#       column        = 5
#       width         = 4
#       height        = 3
#     }
#     line_chart = {
#       visualization = "line_chart"
#       title         = "Line Chart Widget"
#       nrql          = "SELECT average(duration) FROM Transaction TIMESERIES"
#       row           = 4
#       column        = 1
#       width         = 8
#       height        = 6
#     }
#     table = {
#       visualization = "table"
#       title         = "Table Widget"
#       nrql          = "SELECT * FROM Transaction LIMIT 5"
#       row           = 10
#       column        = 1
#       width         = 8
#       height        = 6
#     }
#     bar_chart = {
#       visualization = "bar_chart"
#       title         = "Bar Chart Widget"
#       nrql          = "SELECT count(*) FROM Transaction FACET appName"
#       row           = 10
#       column        = 9
#       width         = 8
#       height        = 6
#     }
#   }
# }
