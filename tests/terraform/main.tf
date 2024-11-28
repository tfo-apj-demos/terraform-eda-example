terraform { 
  cloud { 
    hostname = "tfe.hashicorp.local" 
    organization = "gcve" 

    workspaces { 
      name = "testnotifications" 
    } 

  } 
}

#create some broken terraform code using pet nulls
resource "null_resource" "test" {
  triggers = {
    always_run = timestamp()
  }
}