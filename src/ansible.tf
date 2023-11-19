
resource "local_file" "inventory_cfg" {
  content = templatefile("${path.module}/inventory.tftpl", {
        webservers = local.webservers 
        databases = local.databases
        storage = local.storage
     })
  filename = "${abspath(path.module)}/inventory.cfg"
}
resource "null_resource" "web_hosts_provision" {
  depends_on = [yandex_compute_instance.storage]

  provisioner "local-exec" {
    command = "cat ~/.ssh/id_ed25519 | ssh-add -"
  }
  provisioner "local-exec" {
    command = "sleep 60"
  }
  provisioner "local-exec" {                  
    command  = "export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook -i ${abspath(path.module)}/inventory.cfg ${abspath(path.module)}/test.yml"
    on_failure = continue 
    environment = { ANSIBLE_HOST_KEY_CHECKING = "False" }
  }
    triggers = {  
      always_run         = "${timestamp()}" 
      playbook_src_hash  = file("${abspath(path.module)}/test.yml") 
      ssh_public_key     = local.ssh_key 
    }
  }

