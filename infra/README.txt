Конфиги подготовлены для работы с Яндекс.Клаудом.

Необходимый софт:
1. yc 
2. terraform
3. ansible
4. git

Подготовка среды:
1. Сгенерировать и записать в переменную токен Яндекса
export YC_TOKEN=$(yc iam create-token)
2. Скачать git
 git clone https://github.com/malexvit/otus-terraform-main.git
 
3. Подключить провайдера Яндекса
nano ~/.terraformrc
 provider_installation {
   network_mirror {
     url = "https://terraform-mirror.yandexcloud.net/"
     include = ["registry.terraform.io/*/*"]
   }
   direct {
     exclude = ["registry.terraform.io/*/*"]
   }
 }



Подготовка манифестов:
1. prov.tf
  cloud_id = "<id облака Яндекса>"
  folder_id = "<id каталога>"
2. users.txt
  Добавить ssh-ключ.


Запуск и проверка
1. terraform init
2. terraform apply
3. При выводе будет отображен внешний айпи адрес сервера: The server IP is <ip сервера>

