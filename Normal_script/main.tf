resource "newrelic_one_dashboard" "My-dashboard" {
  name  = "terraform"

  page {
    name = "New Relic Terraform"

    widget_billboard {
      title  = "Requests per minute"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    }
     widget_billboard {
      title  = "No of transactions"
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        query = "SELECT count(*) FROM Transaction"
      }
    }

    widget_bar {
      title  = "Average transaction duration, by application"
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = 4439967
        query      = "SELECT average(duration) FROM Transaction"
      }
    }

    widget_bar {
      title  = "no of transactions"
      row    = 2
      column = 7
      width  = 6
      height = 3

      nrql_query {
        account_id = 4439967
        query      = "SELECT count(*) FROM Transaction"
      }
    }

    widget_line {
      title  = "Average transaction duration and the request per minute, by application"
      row    = 3
      column = 1
      width  = 6
      height = 3

      nrql_query {
        account_id = 4439967
        query      = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
      }

      nrql_query {
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    }

    widget_markdown {
      title  = "Dashboard Note"
      text = "## This is a Markdown Widget\n\nYou can use **markdown** to format the content."
      row    = 3
      column = 7
      width  = 6
      height = 3

    }
    
     widget_markdown { 
       title =  "Markdown Widget with Embedded NRQL"
  
        text =  "## Dashboard Summary\n\n**Total Transactions:** `{{#nrql}}SELECT count(*) FROM Transaction {{/nrql}}`\n\n**Average Duration:** `{{#nrql}}SELECT average(duration) FROM Transaction {{/nrql}}`\n\n**Error Rate:** `{{/nrql}}`"
  
      
     row =  4
    column = 1
    width =  6
    height = 3
  
}


    widget_line {
      title = "Overall CPU % Statistics"
      row = 4
      column = 7
      height = 3
      width = 6

      nrql_query {
        query = "SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES"

      }

    }
    widget_table {
     title = "Average duration"
    
    row = 5
    column = 1
    width = 6
    height = 3
    nrql_query {
      query = "SELECT average(duration) as 'Average Duration', count(*) as 'Count'FROM Transaction"
      }

  
}
      widget_table {
     title = "Average duration another"
    
    row = 5
    column = 7
    width = 6
    height = 4
    nrql_query {
      query =  "SELECT average(duration) as 'Average Response Time (ms)', count(*) as 'Total Requests'FROM Transaction "
      }
      }
  }
}