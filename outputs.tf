output "ai_document_models_id" {
  description = "Map of id values across all ai_document_models, keyed the same as var.ai_document_models except keys with no id are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_document_models_compartment_id" {
  description = "Map of compartment_id values across all ai_document_models, keyed the same as var.ai_document_models except keys with no compartment_id are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ai_document_models_component_models" {
  description = "Map of component_models values across all ai_document_models, keyed the same as var.ai_document_models except keys with no component_models are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.component_models if v.component_models != null && length(v.component_models) > 0 }
}
output "ai_document_models_defined_tags" {
  description = "Map of defined_tags values across all ai_document_models, keyed the same as var.ai_document_models except keys with no defined_tags are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "ai_document_models_description" {
  description = "Map of description values across all ai_document_models, keyed the same as var.ai_document_models except keys with no description are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ai_document_models_display_name" {
  description = "Map of display_name values across all ai_document_models, keyed the same as var.ai_document_models except keys with no display_name are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ai_document_models_freeform_tags" {
  description = "Map of freeform_tags values across all ai_document_models, keyed the same as var.ai_document_models except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "ai_document_models_inference_units" {
  description = "Map of inference_units values across all ai_document_models, keyed the same as var.ai_document_models except keys with no inference_units are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.inference_units if v.inference_units != null }
}
output "ai_document_models_is_composed_model" {
  description = "Map of is_composed_model values across all ai_document_models, keyed the same as var.ai_document_models except keys with no is_composed_model are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.is_composed_model if v.is_composed_model != null }
}
output "ai_document_models_is_quick_mode" {
  description = "Map of is_quick_mode values across all ai_document_models, keyed the same as var.ai_document_models except keys with no is_quick_mode are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.is_quick_mode if v.is_quick_mode != null }
}
output "ai_document_models_labels" {
  description = "Map of labels values across all ai_document_models, keyed the same as var.ai_document_models except keys with no labels are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "ai_document_models_language" {
  description = "Map of language values across all ai_document_models, keyed the same as var.ai_document_models except keys with no language are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.language if v.language != null && length(v.language) > 0 }
}
output "ai_document_models_lifecycle_details" {
  description = "Map of lifecycle_details values across all ai_document_models, keyed the same as var.ai_document_models except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "ai_document_models_locks" {
  description = "Map of locks values across all ai_document_models, keyed the same as var.ai_document_models except keys with no locks are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "ai_document_models_max_training_time_in_hours" {
  description = "Map of max_training_time_in_hours values across all ai_document_models, keyed the same as var.ai_document_models except keys with no max_training_time_in_hours are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.max_training_time_in_hours if v.max_training_time_in_hours != null }
}
output "ai_document_models_metrics" {
  description = "Map of metrics values across all ai_document_models, keyed the same as var.ai_document_models except keys with no metrics are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "ai_document_models_model_id" {
  description = "Map of model_id values across all ai_document_models, keyed the same as var.ai_document_models except keys with no model_id are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.model_id if v.model_id != null && length(v.model_id) > 0 }
}
output "ai_document_models_model_sub_type" {
  description = "Map of model_sub_type values across all ai_document_models, keyed the same as var.ai_document_models except keys with no model_sub_type are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => one(v.model_sub_type) if v.model_sub_type != null && length(v.model_sub_type) > 0 }
}
output "ai_document_models_model_type" {
  description = "Map of model_type values across all ai_document_models, keyed the same as var.ai_document_models except keys with no model_type are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.model_type if v.model_type != null && length(v.model_type) > 0 }
}
output "ai_document_models_model_version" {
  description = "Map of model_version values across all ai_document_models, keyed the same as var.ai_document_models except keys with no model_version are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.model_version if v.model_version != null && length(v.model_version) > 0 }
}
output "ai_document_models_project_id" {
  description = "Map of project_id values across all ai_document_models, keyed the same as var.ai_document_models except keys with no project_id are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "ai_document_models_state" {
  description = "Map of state values across all ai_document_models, keyed the same as var.ai_document_models except keys with no state are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ai_document_models_system_tags" {
  description = "Map of system_tags values across all ai_document_models, keyed the same as var.ai_document_models except keys with no system_tags are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "ai_document_models_tenancy_id" {
  description = "Map of tenancy_id values across all ai_document_models, keyed the same as var.ai_document_models except keys with no tenancy_id are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.tenancy_id if v.tenancy_id != null && length(v.tenancy_id) > 0 }
}
output "ai_document_models_testing_dataset" {
  description = "Map of testing_dataset values across all ai_document_models, keyed the same as var.ai_document_models except keys with no testing_dataset are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => one(v.testing_dataset) if v.testing_dataset != null && length(v.testing_dataset) > 0 }
}
output "ai_document_models_time_created" {
  description = "Map of time_created values across all ai_document_models, keyed the same as var.ai_document_models except keys with no time_created are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "ai_document_models_time_updated" {
  description = "Map of time_updated values across all ai_document_models, keyed the same as var.ai_document_models except keys with no time_updated are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "ai_document_models_trained_time_in_hours" {
  description = "Map of trained_time_in_hours values across all ai_document_models, keyed the same as var.ai_document_models except keys with no trained_time_in_hours are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => v.trained_time_in_hours if v.trained_time_in_hours != null }
}
output "ai_document_models_training_dataset" {
  description = "Map of training_dataset values across all ai_document_models, keyed the same as var.ai_document_models except keys with no training_dataset are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => one(v.training_dataset) if v.training_dataset != null && length(v.training_dataset) > 0 }
}
output "ai_document_models_validation_dataset" {
  description = "Map of validation_dataset values across all ai_document_models, keyed the same as var.ai_document_models except keys with no validation_dataset are omitted"
  value       = { for k, v in oci_ai_document_model.ai_document_models : k => one(v.validation_dataset) if v.validation_dataset != null && length(v.validation_dataset) > 0 }
}

