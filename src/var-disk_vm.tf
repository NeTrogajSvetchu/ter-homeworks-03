variable "disk_resources" {
  type = map(string)
  default = {disk_vm_cores="2",disk_vm_memory="1",disk_vm_core_fraction="5"}
}

variable "size_yandex_compute_disk_storage" {
  type = number
  default = 1
}

variable "type_yandex_compute_disk_storage" {
  type = string
  default = "network-ssd"
}

variable "zone_yandex_compute_disk_storage" {
  type = string
  default = "ru-central1-a"
}

variable "count_yandex_compute_disk_storage" {
  type = number
  default = 3
}

variable "name_yandex_compute_instance_storage" {
  type = string
  default = "storage"
}

variable "size_yandex_compute_instance_storage" {
  type = number
  default = 10
  
}