variable "iap_web_type_compute_iam_members" {
  description = <<EOT
Map of iap_web_type_compute_iam_members, attributes below
Required:
    - member
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member  = string
    role    = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

