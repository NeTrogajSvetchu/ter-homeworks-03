variable "web_resources" {
  type = map(string)
  default = {web_vm_cores="2",web_vm_memory="1",web_vm_core_fraction="5"}
}

variable "count_yandex_compute_instance_WM-count" {
  type = number
  default = 2
}