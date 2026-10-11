resource "oci_ai_document_model" "ai_document_models" {
  for_each = var.ai_document_models

  compartment_id             = each.value.compartment_id
  model_type                 = each.value.model_type
  project_id                 = each.value.project_id
  defined_tags               = each.value.defined_tags
  description                = each.value.description
  display_name               = each.value.display_name
  freeform_tags              = each.value.freeform_tags
  inference_units            = each.value.inference_units
  is_quick_mode              = each.value.is_quick_mode
  language                   = each.value.language
  max_training_time_in_hours = each.value.max_training_time_in_hours
  model_id                   = each.value.model_id
  model_version              = each.value.model_version

  dynamic "component_models" {
    for_each = each.value.component_models != null ? each.value.component_models : []
    content {
      model_id = component_models.value.model_id
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      compartment_id      = locks.value.compartment_id
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "model_sub_type" {
    for_each = each.value.model_sub_type != null ? [each.value.model_sub_type] : []
    content {
      model_sub_type = model_sub_type.value.model_sub_type
      model_type     = model_sub_type.value.model_type
    }
  }

  dynamic "testing_dataset" {
    for_each = each.value.testing_dataset != null ? [each.value.testing_dataset] : []
    content {
      bucket       = testing_dataset.value.bucket
      dataset_id   = testing_dataset.value.dataset_id
      dataset_type = testing_dataset.value.dataset_type
      namespace    = testing_dataset.value.namespace
      object       = testing_dataset.value.object
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "training_dataset" {
    for_each = each.value.training_dataset != null ? [each.value.training_dataset] : []
    content {
      bucket       = training_dataset.value.bucket
      dataset_id   = training_dataset.value.dataset_id
      dataset_type = training_dataset.value.dataset_type
      namespace    = training_dataset.value.namespace
      object       = training_dataset.value.object
    }
  }

  dynamic "validation_dataset" {
    for_each = each.value.validation_dataset != null ? [each.value.validation_dataset] : []
    content {
      bucket       = validation_dataset.value.bucket
      dataset_id   = validation_dataset.value.dataset_id
      dataset_type = validation_dataset.value.dataset_type
      namespace    = validation_dataset.value.namespace
      object       = validation_dataset.value.object
    }
  }
}

