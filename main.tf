
# input variable
variable "file_contents" {
  type    = string
  default = "hello world"
}

# local file
resource "local_file" "test_file" {
  content = var.file_contents
  # path.module is a built-in terraform variable of the path to the current module
  filename = "${path.module}/local_file.txt"
}

# null resource that echos out a local file
resource "null_resource" "echo_file" {
  # provisioners are used to execute scripts on a local or remote machine
  provisioner "local-exec" {
    command = "echo ${var.file_contents} > ${path.module}/output.txt"
  }
}
