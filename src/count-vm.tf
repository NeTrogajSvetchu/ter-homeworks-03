
data "yandex_compute_image" "ubuntu" {
  family = var.vm_family  
}
resource "yandex_compute_instance" "WM-count" {
  count = var.count_yandex_compute_instance_WM-count
  name  = "web-${count.index + 1}"

  platform_id = var.DZ_platform_id 

resources {
    cores         = var.web_resources.web_vm_cores
    memory        = var.web_resources.web_vm_memory
    core_fraction = var.web_resources.web_vm_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
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
  
}
 
