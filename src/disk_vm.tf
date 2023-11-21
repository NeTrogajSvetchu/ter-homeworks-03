resource "yandex_compute_disk" "storage" {
    count = var.count_yandex_compute_disk_storage
    name = "virtualdisk-${count.index + 1}" 
    size = var.size_yandex_compute_disk_storage
    type = var.type_yandex_compute_disk_storage
    zone = var.zone_yandex_compute_disk_storage
}


resource "yandex_compute_instance" "storage" {
    depends_on = [yandex_compute_instance.WM-fore_each]
    platform_id = var.DZ_platform_id 
    name = var.name_yandex_compute_instance_storage
  
  resources {
    cores         = var.disk_resources.disk_vm_cores
    memory        = var.disk_resources.disk_vm_memory
    core_fraction = var.disk_resources.disk_vm_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = var.size_yandex_compute_instance_storage
    }
  }
  scheduling_policy {
    preemptible = var.scheduling_policy
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_nat
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           = "ubuntu:${local.ssh_key}"
  } 
 
  dynamic "secondary_disk"  {
    for_each =  yandex_compute_disk.storage
    content {
      disk_id = secondary_disk.value.id
    }
  }
}



