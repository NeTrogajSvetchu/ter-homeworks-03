output "output" { 
  
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

 
