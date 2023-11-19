locals {
  ssh_key = file("~/.ssh/id_ed25519.pub")
}

locals {
  
    webservers = yandex_compute_instance.WM-count.*
    databases = yandex_compute_instance.WM-fore_each
    storage = yandex_compute_instance.storage.* 
}