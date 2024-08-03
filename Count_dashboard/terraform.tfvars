account_id = 4439967
api_key = "NRAK-SMO5Y0LVG7ALXG72OZP8EIBCQFF"
 
dashboardTF = {
  
    "0"={
       name_dashboard = "Dashboard-Count"
       page           = "New Relic Terraform"
       Billboardtitle1 = "Requests per minute"
    
      row1    = 1
      column1 = 1
      width1  = 6
      height1 = 3
      query_Billboard  = "FROM Transaction SELECT rate(count(*), 1 minute)"

    
      Billboardtitle2  = "No of transactions"
      
      row2    = 1
      column2 = 7
      width2  = 6
      height2 = 3
      query_Billboard2 = "SELECT count(*) FROM Transaction"


    
     
      
      Bartitle1  = "no of transactions"
      row3    = 2
      column3 = 1
      width3  = 6
      height3 = 3
      query_bar = "SELECT average(duration) FROM Transaction"


        
    
  
      Bartitle2   = "Average transaction duration, by application"
      row4    = 2
      column4 = 7
      width4  = 6
      height4 = 3
      query_bar2      = "SELECT count(*) FROM Transaction"




    
       
       line    = "Average transaction duration and the request per minute, by application"
      row5    = 3
      column5 = 1
      width5  = 6
      height5 = 3
      query_line = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
    
  
      line2   = "Overall CPU % Statistics"
      row6 = 3
      column6 = 7
      height6 = 3
      width6 = 6
      query_line2  =  "SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES"

    
      markdown =  "Markdown Widget with Embedded NRQL"
  
        text_markdown =  "## Dashboard Summary\n\n**Total Transactions:** `{{#nrql}}SELECT count(*) FROM Transaction {{/nrql}}`\n\n**Average Duration:** `{{#nrql}}SELECT average(duration) FROM Transaction {{/nrql}}`\n\n**Error Rate:** `{{/nrql}}`"
  
      
     row7 =  4
    column7 = 1
    width7 =  6
    height7 = 3

  
       markdown2   = "Dashboard Note"
       text_markdown2  = "## This is a Markdown Widget\n\nYou can use **markdown** to format the content."
      row8   = 4
      column8 = 7
      width8  = 6
      height8 = 3

      table = "Average duration"
    
    row9 = 5
    column9 = 1
    width9 = 6
    height9 = 3
    query_table = "SELECT average(duration) as 'Average Duration', count(*) as 'Count'FROM Transaction"

     table2 = "Average duration another"
    
    row10 = 5
    column10 = 7
    width10 = 6
    height10 = 3
 
      query_table2 =  "SELECT average(duration) as 'Average Response Time (ms)', count(*) as 'Total Requests'FROM Transaction "
      
    


    }
    
}



