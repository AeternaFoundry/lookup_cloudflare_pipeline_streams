output "pipeline_streams_lookup_account_id" {
  description = "Map of account_id values across all pipeline_streams_lookup, keyed the same as var.pipeline_streams_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_pipeline_streams.pipeline_streams_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "pipeline_streams_lookup_max_items" {
  description = "Map of max_items values across all pipeline_streams_lookup, keyed the same as var.pipeline_streams_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_pipeline_streams.pipeline_streams_lookup : k => v.max_items if v.max_items != null }
}
output "pipeline_streams_lookup_name" {
  description = "Map of name values across all pipeline_streams_lookup, keyed the same as var.pipeline_streams_lookup except keys with no name are omitted"
  value       = { for k, v in data.cloudflare_pipeline_streams.pipeline_streams_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pipeline_streams_lookup_pipeline_id" {
  description = "Map of pipeline_id values across all pipeline_streams_lookup, keyed the same as var.pipeline_streams_lookup except keys with no pipeline_id are omitted"
  value       = { for k, v in data.cloudflare_pipeline_streams.pipeline_streams_lookup : k => v.pipeline_id if v.pipeline_id != null && length(v.pipeline_id) > 0 }
}
output "pipeline_streams_lookup_result" {
  description = "Map of result values across all pipeline_streams_lookup, keyed the same as var.pipeline_streams_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_pipeline_streams.pipeline_streams_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

