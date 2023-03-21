
variable "username" {
  type    =  list(string)
  default = []
}

variable "region" {
  default = ""
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}


variable "policy_name" {
  type = string
  default = ""
  
}
variable "tag_name" {
    type = map(string)
    default = {
      "name" = "Users"
    }
}
