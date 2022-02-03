resource "google_project" "my_project" {
  name       = "Add your project name"
  project_id = "Add your project ID"
  folder_id  = "Add your folder ID"
  billing_account = "Add your billing account ID"
}

resource "google_project_iam_binding" "project" {
depends_on = [google_project.my_project]
  project = "Add your project name"
  role    = "roles/owner"//add role
  members = ["user:example@gmail.com",]
}

resource "google_project_service" "service_project" {
depends_on = [google_project.my_project]
  project = "Add your project name"
  service = "compute.googleapis.com" //add api you want to enable
  disable_dependent_services = true
}
