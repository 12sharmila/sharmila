resource "google_sql_database_instance" "instance" {
  name             = "database-12"
  region           = "us-central1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}
resource "google_sql_user" "users" {
  name     = "blogdbuser"
  instance = google_sql_database_instance.instance.name
  host     = "any"
  password = "password"
  
}