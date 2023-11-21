/*data "yandex_compute_instance" "name-WM-count" {
  count =  var.count_yandex_compute_instance_WM-count
  name = "web-${count.index + 1}"
}

data "yandex_compute_instance" "id-WM-count" {
  for_each = {for index, value in yandex_compute_instance.WM-count.*: index => value}
    id = each.value ["id"]
}
*/
  
        # {name = yandex_compute_instance.WM-count.*.name,  id   = yandex_compute_instance.WM-count.*.id , fqdn = yandex_compute_instance.WM-count.0.fqdn}
        #name = yandex_compute_instance.WM-fore_each.[*].name , id   = yandex_compute_instance.WM-fore_each.id , fqdn = yandex_compute_instance.WM-fore_each.fqdn
        #{name = yandex_compute_instance.storage.*.name , id   = yandex_compute_instance.storage.*.id , fqdn = yandex_compute_instance.storage.*.fqdn}
  
output "output"  {
  value = [{
    fqdn = yandex_compute_instance.WM-count.0.fqdn
    id   = yandex_compute_instance.WM-count.0.id
    name = yandex_compute_instance.WM-count.0.name
  },
  {
    name = yandex_compute_instance.WM-count.1.name
    fqdn = yandex_compute_instance.WM-count.1.fqdn
    id   = yandex_compute_instance.WM-count.1.id
    
  },
  {
    name = yandex_compute_instance.WM-fore_each.0.name
    fqdn = yandex_compute_instance.WM-fore_each.0.fqdn
    id   = yandex_compute_instance.WM-fore_each.0.id
  },
  {
    name = yandex_compute_instance.WM-fore_each.1.name
    fqdn = yandex_compute_instance.WM-fore_each.1.fqdn
    id   = yandex_compute_instance.WM-fore_each.1.id
  },
  {
    name = yandex_compute_instance.storage.name
    fqdn = yandex_compute_instance.storage.fqdn
    id   = yandex_compute_instance.storage.id
}]
}

  

 
