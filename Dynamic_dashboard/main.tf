resource "newrelic_one_dashboard" "dynamicDashboard" {
  for_each    = var.dashboard
  name        = each.value.name
  

  dynamic "page" {
    for_each = var.page
    content {
      name = page.value.name
      dynamic "widget_billboard" {
        for_each = page.value.billboard
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }
      }

      dynamic "widget_bar" {
        for_each = page.value.bar
        iterator = widget

        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }

      }

      dynamic "widget_line" {
        for_each = page.value.line
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
        }

      }


      dynamic "widget_markdown" {
        for_each = page.value.markdown
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height
          text   = widget.value.text

         
        }



      }
      dynamic "widget_table" {
        for_each = page.value.table
        iterator = widget
        content {
            title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          width  = widget.value.width
          height = widget.value.height

          nrql_query {
            query = widget.value.query
          }
          
        }
        
      }

    }

  }

}