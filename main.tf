resource "local_file" "pet"{
    filename = "test.txt"
    content = "This is a file generated using terraform testing"
    file_permission = 0700

}
resource "null_resource" "generate_token"{
    triggers = {
        always_run = "${timestamp()}"
    }
    provisioner "local-exec"{
        command = "echo ${var.token}"
    }
}

