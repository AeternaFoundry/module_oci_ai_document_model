variable "ai_document_models" {
  description = <<EOT
Map of ai_document_models, attributes below
Required:
    - compartment_id
    - model_type
    - project_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - inference_units
    - is_quick_mode
    - language
    - max_training_time_in_hours
    - model_id
    - model_version
    - component_models (block):
        - model_id (optional)
    - locks (block):
        - compartment_id (optional)
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - model_sub_type (block):
        - model_sub_type (required)
        - model_type (required)
    - testing_dataset (block):
        - bucket (optional)
        - dataset_id (optional)
        - dataset_type (required)
        - namespace (optional)
        - object (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - training_dataset (block):
        - bucket (optional)
        - dataset_id (optional)
        - dataset_type (required)
        - namespace (optional)
        - object (optional)
    - validation_dataset (block):
        - bucket (optional)
        - dataset_id (optional)
        - dataset_type (required)
        - namespace (optional)
        - object (optional)
EOT

  type = map(object({
    compartment_id             = string
    model_type                 = string
    project_id                 = string
    defined_tags               = optional(map(string))
    description                = optional(string)
    display_name               = optional(string)
    freeform_tags              = optional(map(string))
    inference_units            = optional(number)
    is_quick_mode              = optional(bool)
    language                   = optional(string)
    max_training_time_in_hours = optional(number)
    model_id                   = optional(string)
    model_version              = optional(string)
    component_models = optional(list(object({
      model_id = optional(string)
    })))
    locks = optional(list(object({
      compartment_id      = optional(string)
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    model_sub_type = optional(object({
      model_sub_type = string
      model_type     = string
    }))
    testing_dataset = optional(object({
      bucket       = optional(string)
      dataset_id   = optional(string)
      dataset_type = string
      namespace    = optional(string)
      object       = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    training_dataset = optional(object({
      bucket       = optional(string)
      dataset_id   = optional(string)
      dataset_type = string
      namespace    = optional(string)
      object       = optional(string)
    }))
    validation_dataset = optional(object({
      bucket       = optional(string)
      dataset_id   = optional(string)
      dataset_type = string
      namespace    = optional(string)
      object       = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ai_document_models : (
        v.model_sub_type == null || (contains([for v in ["PRE_TRAINED_DOCUMENT_ELEMENTS_EXTRACTION", "PRE_TRAINED_KEY_VALUE_EXTRACTION"] : lower(v)], lower(v.model_sub_type.model_type)))
      )
    ])
    error_message = "must be one of: \"PRE_TRAINED_DOCUMENT_ELEMENTS_EXTRACTION\", \"PRE_TRAINED_KEY_VALUE_EXTRACTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_document_models : (
        v.testing_dataset == null || (contains([for v in ["DATA_SCIENCE_LABELING", "OBJECT_STORAGE"] : lower(v)], lower(v.testing_dataset.dataset_type)))
      )
    ])
    error_message = "must be one of: \"DATA_SCIENCE_LABELING\", \"OBJECT_STORAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_document_models : (
        v.training_dataset == null || (contains([for v in ["DATA_SCIENCE_LABELING", "OBJECT_STORAGE"] : lower(v)], lower(v.training_dataset.dataset_type)))
      )
    ])
    error_message = "must be one of: \"DATA_SCIENCE_LABELING\", \"OBJECT_STORAGE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_document_models : (
        v.validation_dataset == null || (contains([for v in ["DATA_SCIENCE_LABELING", "OBJECT_STORAGE"] : lower(v)], lower(v.validation_dataset.dataset_type)))
      )
    ])
    error_message = "must be one of: \"DATA_SCIENCE_LABELING\", \"OBJECT_STORAGE\""
  }
}

