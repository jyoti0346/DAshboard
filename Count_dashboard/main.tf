resource "newrelic_one_dashboard" "TerraformDashboard" {
  count = length(var.dashboardTF)
  name  = var.dashboardTF[count.index].name_dashboard

  page {
    name = var.dashboardTF[count.index].page
  
   widget_billboard {
      title  = var.dashboardTF[count.index].Billboardtitle1 
      row    = var.dashboardTF[count.index].row1
      column = var.dashboardTF[count.index].column1
      width  = var.dashboardTF[count.index].width1
      height = var.dashboardTF[count.index].height1

      nrql_query {
        query = var.dashboardTF[count.index].query_Billboard
      }
    }
     widget_billboard {
      title  = var.dashboardTF[count.index].Billboardtitle2
       row    = var.dashboardTF[count.index].row2
      column = var.dashboardTF[count.index].column2
      width  = var.dashboardTF[count.index].width2
      height = var.dashboardTF[count.index].height2

      nrql_query {
        query = var.dashboardTF[count.index].query_Billboard2
      }
    }

    widget_bar {
      title  = var.dashboardTF[count.index].Bartitle1
       row    = var.dashboardTF[count.index].row3
      column = var.dashboardTF[count.index].column3
      width  = var.dashboardTF[count.index].width3
      height = var.dashboardTF[count.index].height3


      nrql_query {
        account_id = var.account_id
        query      = var.dashboardTF[count.index].query_bar
      }
    }

    widget_bar {
     title  = var.dashboardTF[count.index].Bartitle2
       row    = var.dashboardTF[count.index].row4
      column = var.dashboardTF[count.index].column4
      width  = var.dashboardTF[count.index].width4
      height = var.dashboardTF[count.index].height4

      nrql_query {
       
        account_id = var.account_id
        query      = var.dashboardTF[count.index].query_bar2
      }
    }

    widget_line {
     title  = var.dashboardTF[count.index].line
       row    = var.dashboardTF[count.index].row5
      column = var.dashboardTF[count.index].column5
      width  = var.dashboardTF[count.index].width5
      height = var.dashboardTF[count.index].height5


      nrql_query {
        
        account_id = var.account_id
        query      = var.dashboardTF[count.index].query_line
      }

      # nrql_query {
      #   query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      # }
    }

    widget_markdown {
      
      text = var.dashboardTF[count.index].text_markdown
        title  = var.dashboardTF[count.index].markdown
       row    = var.dashboardTF[count.index].row6
      column = var.dashboardTF[count.index].column6
      width  = var.dashboardTF[count.index].width6
      height = var.dashboardTF[count.index].height6
     

    }
    
     widget_markdown { 
         text = var.dashboardTF[count.index].text_markdown2
        title  =var.dashboardTF[count.index].markdown2
       row    = var.dashboardTF[count.index].row7
      column = var.dashboardTF[count.index].column7
      width  = var.dashboardTF[count.index].width7
      height = var.dashboardTF[count.index].height7
  
}


    widget_line {
       title  = var.dashboardTF[count.index].line2
       row    = var.dashboardTF[count.index].row8
      column = var.dashboardTF[count.index].column8
      width  = var.dashboardTF[count.index].width8
      height = var.dashboardTF[count.index].height8

      nrql_query {
        query     = var.dashboardTF[count.index].query_line2

      }

    }
    widget_table {
     title  = var.dashboardTF[count.index].table
       row    = var.dashboardTF[count.index].row9
      column = var.dashboardTF[count.index].column9
      width  = var.dashboardTF[count.index].width9
      height = var.dashboardTF[count.index].height9
    nrql_query {
      query = var.dashboardTF[count.index].query_table
      }

  
}
      widget_table {
     title  = var.dashboardTF[count.index].table2
       row    =var.dashboardTF[count.index].row10
      column = var.dashboardTF[count.index].column10
      width  = var.dashboardTF[count.index].width10
      height = var.dashboardTF[count.index].height10
    nrql_query {
      query = var.dashboardTF[count.index].query_table2
      }

      }
  }
}

