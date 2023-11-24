Задание 1.

    1. Проект изучен.
   
    2. Файл  "personal.auto.tfvars" заполнен.

    3. Итог вывода terraform apply
![Alt text](png/1.png)

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

Задание 4.

    1. Создан "ansible.tf"

![Alt text](png/16.png)

    2. Создан файл "inventory.tftpl"

![Alt text](png/17.png)

    3. Итог вывода terraform apply

![Alt text](png/6.png)

Задание 5.

    1.Создан файл "outputs.tf"

![Alt text](png/18.png)

    2. Итог вывода terraform refresh, output
   
![Alt text](png/7.png)

Задание 6.

    1. Отключяем "nat" в настройках сетевого адаптера
   
![Alt text](png/19.png)
    
    2. Изменяем файл "inventory.tftpl" "nat_ip_address" на "ip_address"

![Alt text](png/20.png)

    3. Итог вывода terraform apply

![Alt text](png/8.png)