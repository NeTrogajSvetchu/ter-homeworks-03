resource "yandex_compute_disk" "storage" {
    count = 3
  /*name = "Virtual Disk - ${count.index + 1}" Яндекс не пропустил

    Error: Error while requesting API to create disk: server-request-id = 92aa4cee-cd56-43dd-a564-4eac0bd7cecb server-trace-id = a21b27e2bbe15a32:5429d76a77a7804f:a21b27e2bbe15a32:1 client-request-id = 03fe207e-f8b1-4f61-8d55-5252348e2177 client-trace-id = 8b16b744-9f2b-4d82-94de-e281255313e4 rpc error: code = InvalidArgument desc = Request validation error: Name: invalid resource name

│   with yandex_compute_disk.storage[2],
│   on disk_vm.tf line 1, in resource "yandex_compute_disk" "storage":
│    1: resource "yandex_compute_disk" "storage" {
│ */
    size = 1
    type = "network-ssd"
    zone = "ru-central1-a"
}


resource "yandex_compute_instance" "storage" {
    platform_id = var.DZ_platform_id 
    name = "storage"
  
  resources {
    cores         = var.disk_resources.disk_vm_cores
    memory        = var.disk_resources.disk_vm_memory
    core_fraction = var.disk_resources.disk_vm_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = 10
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
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



