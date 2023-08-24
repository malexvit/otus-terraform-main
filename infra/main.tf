
resource "yandex_vpc_network" "network-1" {
  name = "otus-learn-net"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = var.zone
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_compute_instance" "vm-1" {
  name = "otus-learn-web"
  hostname = "web.otus.learn"
  zone = var.zone



  resources {
    cores  = var.cpu
    memory = var.memory
    core_fraction = var.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.disk
      type = var.disk_type
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
    ip_address         = var.internal_ip_address
    nat_ip_address     = var.nat_ip_address
  }

  provisioner "local-exec" {
    command = "echo \" The server IP is  ${self.network_interface.0.nat_ip_address}\""
  }

metadata = {
    user-data = "${file("users.txt")}"
}
}



