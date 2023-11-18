variable "web_resources" {
  type = map(string)
  default = {web_vm_cores="2",web_vm_memory="1",web_vm_core_fraction="5"}
}