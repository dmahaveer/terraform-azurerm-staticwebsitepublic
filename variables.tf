# Random String

variable "random_string_length" {

  description = "Random String Length"
  type        = string

}

variable "random_string_special" {

  description = "Random String Special Character"
  type        = bool

}

variable "random_string_upper" {

  description = "Random String Upper Character"
  type        = bool

}

variable "random_string_numeric" {

  description = "Random String Numeric Character"
  type        = string

}

# Resource Group

variable "resource_group_name" {

  description = "Resource Group Name"
  type        = string

}

variable "resource_location" {

  description = "Resource Location"
  type        = string

}

variable "tags" {

  description = "Tags"
  type        = map(string)

}


# Storage Account

variable "storage_account_name" {

  description = "Storage Account Name"
  type        = string

}

variable "storage_account_tier" {

  description = "Storage Account Tier"
  type        = string

}

variable "storage_account_replication_type" {

  description = "Storage Account Replication Tyoe"
  type        = string

}

variable "storage_account_kind" {

  description = "Storage Account Kind"
  type        = string

}

variable "storage_account_static_website_index_document" {

  description = "Storage Account Static Website Index Document"
  type        = string

}


variable "storage_account_static_website_error_404_document" {

  description = "Storage Account Static Website Error 404 Document"
  type        = string

}

