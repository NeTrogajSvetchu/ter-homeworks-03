
resource "yandex_compute_instance" "WM-fore_each" {
    depends_on = [yandex_compute_instance.WM-count]
    platform_id = var.DZ_platform_id  
    for_each = {for idx, value in var.fore_each-WM-parametr : idx => value}
    name          = each.value ["name"]
    
  resources {
      
      cores         = each.value ["cores"]
      memory        = each.value ["memory"]
      core_fraction = each.value ["core_fraction"]
      
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size          = each.value ["size"]
      type          = each.value ["type"]
    }

  }
  scheduling_policy {
    preemptible = var.scheduling_policy
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_nat
  }
  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "ubuntu:${local.ssh_key}"
  }
}



