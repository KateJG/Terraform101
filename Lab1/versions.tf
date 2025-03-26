terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7.1" //pesimistic allow patches from ver 3.7.1 can use >= for all vers greater than, or the strictest is when we use e.g version = 3.7.1 
    }
  }
}
