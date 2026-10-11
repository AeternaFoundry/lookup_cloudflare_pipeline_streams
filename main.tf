data "cloudflare_pipeline_streams" "pipeline_streams_lookup" {
  for_each = var.pipeline_streams_lookup

  account_id  = each.value.account_id
  max_items   = each.value.max_items
  name        = each.value.name
  pipeline_id = each.value.pipeline_id
}

