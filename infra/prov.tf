terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  cloud_id = "b1ghefirui1n7uujs2tv"
  folder_id = "b1gq7gpv6n3h318144sg"
  zone = "ru-central1-b"
}