
variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}


variable "dashboard" {

  type = map(object({
    name        = string
    }
  ))
  }
 variable "page"{
     type = map(object({

      name = string

      billboard = map(object({
        title  = string
        row    = number
        column = number
        width  = number
        height = number
        query  = string
      }))

      bar = map(object({
        title  = string
        row    = number
        column = number
        width  = number
        height = number
        query  = string
      }))

      line = map(object({
        title  = string
        row    = number
        column = number
        width  = number
        height = number
        query  = string
      }))

      markdown = map(object({
        title  = string
        row    = number
        column = number
        width  = number
        height = number
        text   = string

      }))

      table = map(object({
        title  = string
        row    = number
        column = number
        width  = number
        height = number
        query  = string
      }))
    }))
    }
  

