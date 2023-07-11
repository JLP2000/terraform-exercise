
# input variable
variable "file_contents" {
  type        = string
  description = "An example input variable used by the null resource and local file"
  default     = "hello world"
}
