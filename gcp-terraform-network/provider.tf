provider "google" {
  version = "~> 3.30"
  credentials = file("project-key.json")
  project = var.project_id

}
