resource "google_cloudbuild_trigger" "myFirstTrigger" {
  name = "${var.trigger_name}"

  github {
    owner = "${var.github_owner}"
    name  =  "${var.github_repo}"

    push {
      branch = "^main$"
    }
  }
  
  filename = "cloudbuild.yaml"

  substitutions = {
    _APPLICATION_NAME = "${var.trigger_name}"
    _REGION           = "${var.region}"
    _PROJECT_ID       = "${var.project_id}"
    _SECRET_KEY       = "${var.secret_key}"
    _SERVICE_NAME     = "${var.trigger_name}"
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"

  service_account = "projects/${var.project_id}/serviceAccounts/${var.service_account}@${var.project_id}.iam.gserviceaccount.com"
}