Задание 1.

    1. Проект изучен.
   
    2. Файл  "personal.auto.tfvars" заполнен.

    3. Итог вывода terraform apply
![Alt text](png/1.png)

Комит к решению заданию 1. 

    https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/1f1513d47932c5223c0ca7470de0b5dbb8aa73ef

Задание 2.

    1. Создан фойл "count-vm.tf"
![Alt text](png/9.png)
    
    2.Создан файл "for_each-vm.tf"
    
![Alt text](png/10.png)
    
    2. Машины из пункта 2 запускаютсья после создания машин из пункта 1
 ![Alt text](png/11.png)
    
    3. SSH передается при помощи функции "file" в local-переменной
![Alt text](png/12.png)
    
    4. Итог вывода terraform apply
![Alt text](png/2.png)
    
![Alt text](png/3.png)

Комит к решению заданию 2. 

    https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/0e0475d68bf20b4de476f591fc7a98a82b92037a

Задание 3.

    1. Созданы 3 виртуальных диска.
![Alt text](png/13.png)

    2. Создана виртуальная машина storage
![Alt text](png/14.png)

    3. Диски подключенны
![Alt text](png/15.png)  

    4.Итог вывода terraform apply
![Alt text](png/4.png)
![Alt text](png/5.png)

Комит к решению заданию 3. 

    https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/1360730259467c9237f69873ddf51dec1373cbe0
Задание 4.

    1. Создан "ansible.tf"

![Alt text](png/16.png)

    2. Создан файл "inventory.tftpl"

![Alt text](png/17.png)

    3. Итог вывода terraform apply

![Alt text](png/6.png)

Комит к решению заданию 4.

    https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/6a8dc8d2de2c3eb927e627850835732c0db6db03

Задание 5.

    1.Создан файл "outputs.tf"

![Alt text](png/18.png)

    2. Итог вывода terraform refresh, output
   
![Alt text](png/7.png)

Комит к решению заданию 5.

https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/d9d3e4d6b4386d6a3e760b8f62d11ebb498e3db0

Задание 6.

    1. Отключяем "nat" в настройках сетевого адаптера
   
![Alt text](png/19.png)
    
    2. Изменяем файл "inventory.tftpl" "nat_ip_address" на "ip_address"

![Alt text](png/20.png)

    3. Итог вывода terraform apply

![Alt text](png/8.png)

Комит к решению заданию 6.

https://github.com/NeTrogajSvetchu/ter-homeworks-03/commit/512cee5836f8cff3cef07fa79d5f8b8cc64ddcf9