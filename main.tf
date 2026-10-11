resource "google_iap_web_type_compute_iam_member" "iap_web_type_compute_iam_members" {
  for_each = var.iap_web_type_compute_iam_members

  member  = each.value.member
  role    = each.value.role
  project = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

