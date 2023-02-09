terraform { // Block
    required_version = "~> 1.3"
  required_providers {
    aws = { //Argument inside the block
      source = "hashicorp/aws" 
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  
}