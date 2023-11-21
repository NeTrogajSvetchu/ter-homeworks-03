/*variable "local.fore_each-WM-parametr" {
  type = map(string)
  default = {fore_each_vm_cores="2",fore_each_vm_memory="1",fore_each_vm_core_fraction="5"}
}
*/
variable "fore_each-WM-parametr" {

type = list(object(
  { 
  cores = number
  name = string
  memory=number
  core_fraction=number
  size=optional(number)
  type=string 
  preemptible= bool
  nat= bool
   },
  
)) 

  default = [
{
  name = "main",
  cores= 2 ,
  memory=2,
  core_fraction=5,
  size= 10,
  type= "network-ssd"
  preemptible = true
  nat       = true
},
{
  name = "replica"
  cores= 2 
  memory= 1
  core_fraction=5
  size= 5
  type= "network-hdd"
  preemptible = true
  nat       = true
},]
  
}
