variable "disk_resources" {
  type = map(string)
  default = {disk_vm_cores="2",disk_vm_memory="1",disk_vm_core_fraction="5"}
}