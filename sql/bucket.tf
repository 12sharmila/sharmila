resource "google_storage_bucket" "static-site" {
  name          = "marine-potion-333804"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = false
}

resource "google_storage_bucket_object" "picture" {
  name   = "blog1234"
  source = "./blog.jpg"
  bucket = google_storage_bucket.static-site.name
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.static-site.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}