provider "google" {
#   credentials = file("/Users/elacey/Desktop/ev-writes-magnificent-code.json")
 credentials = var.GOOGLE_APPLICATION_CREDENTIALS 
  project     = "ev-writes-magnificent-code"
  #   region      = "us-central1"
  version = "~> 3.25"
}