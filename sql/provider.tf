provider "google" {
 credentials = file("cred.json")
 project     = "marine-potion-333804"
 region      = "us-central1"
}