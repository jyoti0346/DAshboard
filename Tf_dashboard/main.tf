resource "newrelic_one_dashboard" "TerraformDashboard" {
  for_each = var.dashboardTF
  name  = each.value.name_dashboard

  page {
    name = each.value.page
  
   widget_billboard {
      title  = each.value.Billboardtitle1 
      row    = each.value.row1
      column = each.value.column1
      width  = each.value.width1
      height = each.value.height1

      nrql_query {
        query = each.value.query_Billboard
      }
    }
     widget_billboard {
      title  = each.value.Billboardtitle2
       row    = each.value.row2
      column = each.value.column2
      width  = each.value.width2
      height = each.value.height2

      nrql_query {
        query = each.value.query_Billboard2
      }
    }

    widget_bar {
      title  = each.value.Bartitle1
       row    = each.value.row3
      column = each.value.column3
      width  = each.value.width3
      height = each.value.height3


      nrql_query {
        account_id = var.account_id
        query      = each.value.query_bar
      }
    }

    widget_bar {
     title  = each.value.Bartitle2
       row    = each.value.row4
      column = each.value.column4
      width  = each.value.width4
      height = each.value.height4

      nrql_query {
       
        account_id = var.account_id
        query      = each.value.query_bar2
      }
    }

    widget_line {
     title  = each.value.line
       row    = each.value.row5
      column = each.value.column5
      width  = each.value.width5
      height = each.value.height5


      nrql_query {
        
        account_id = var.account_id
        query      = each.value.query_line
      }

      # nrql_query {
      #   query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      # }
    }

    widget_markdown {
      
      text = each.value.text_markdown
        title  = each.value.markdown
       row    = each.value.row6
      column = each.value.column6
      width  = each.value.width6
      height = each.value.height6
     

    }
    
     widget_markdown { 
         text = each.value.text_markdown2
        title  = each.value.markdown2
       row    = each.value.row7
      column = each.value.column7
      width  = each.value.width7
      height = each.value.height7
  
}


    widget_line {
       title  = each.value.line2
       row    = each.value.row8
      column = each.value.column8
      width  = each.value.width8
      height = each.value.height8

      nrql_query {
        query     = each.value.query_line2

      }

    }
    widget_table {
     title  = each.value.table
       row    = each.value.row9
      column = each.value.column9
      width  = each.value.width9
      height = each.value.height9
    nrql_query {
      query = each.value.query_table
      }

  
}
      widget_table {
     title  = each.value.table2
       row    = each.value.row10
      column = each.value.column10
      width  = each.value.width10
      height = each.value.height10
    nrql_query {
      query = each.value.query_table2
      }

      }
  }
}

