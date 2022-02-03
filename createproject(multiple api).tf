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
/*
resource "google_project_service" "service_project" {
depends_on = [google_project.my_project]
  project = "sk-terraform-sandbox-12"
  service = "compute.googleapis.com"
  disable_dependent_services = true
}
*/
resource "google_project_service" "service" {
    depends_on = [google_project.my_project]
  for_each = toset([
    "bigquery.googleapis.com",
    "bigquerystorage.googleapis.com",
    "datastore.googleapis.com",
    "clouddebugger.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "sql-component.googleapis.com",
    "storage-component.googleapis.com",
    "storage.googleapis.com",
    "cloudtrace.googleapis.com",
    "cloudapis.googleapis.com",
    "storage-api.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "compute.googleapis.com"
  ])

  service = each.key

  project            = "Add your project name"
  disable_on_destroy = false
}