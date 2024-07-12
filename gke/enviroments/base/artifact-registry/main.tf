resource "google_artifact_registry_repository" "name" {
  location      = var.region
  repository_id = var.trigger_name
  format        = "DOCKER"
}
