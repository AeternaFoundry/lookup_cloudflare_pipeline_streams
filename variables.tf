variable "pipeline_streams_lookup" {
  description = <<EOT
Map of pipeline_streams_lookup, attributes below
Optional:
    - account_id
    - max_items
    - name
    - pipeline_id
EOT

  type = map(object({
    account_id  = optional(string)
    max_items   = optional(number)
    name        = optional(string)
    pipeline_id = optional(string)
  }))
}

