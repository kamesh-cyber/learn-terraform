resource "local_file" "pet"{
    filename = "test.txt"
    content = "This is a file generated using terraform"
    file_permission = 0700

}
