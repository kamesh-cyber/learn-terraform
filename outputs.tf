output "text_file"{
    description = "This is the content of the file"
    value = local_file.pet.id
}

output "token"{
    description = "This is the token"
    value = null_resource.generate_token    
}