# Виконання домашнього завдання task3
## Task3.1 – Створення трьох окремих мереж - Home Office, Enterprise, Data Center.

### Створили мережі згідно завдання з такими даними: Y-89, M-7, D-28 
### - мережа Enterprise
![](https://drive.google.com/uc?export=view&id=1GQQ8qWzlIsMtVVR6xlQEGQlhUzfcUIgi)
![](https://drive.google.com/uc?export=view&id=1gpGv6VoWG9g0ZW-0Xp-8scbBXhlgLhnr)


### - мережа Data Center
![](https://drive.google.com/uc?export=view&id=13wim_mt9_xwZKetUU01yZire_yMlV2KE)
![](https://drive.google.com/uc?export=view&id=1kq48L35PVQ5YvDJrsGWPP241rDBKJ-Oz)

### - мережа Home Office
![](https://drive.google.com/uc?export=view&id=1sMyXP9Y2Ddep82fJjGkNsO5rFMSG8dQB)
![](https://drive.google.com/uc?export=view&id=11jlQ1FFO7H5MzZ_nw5AMDHHFoZ4-_CD0)

## Task3.2 – З’єднання окремих мереж за допомогою мережі Internet

### З'єднали створені мережі між собою за допомогою маршрутизаторів PT-Empty, попередньо вставивши в них 5 модулів 1CGE.
![](https://drive.google.com/uc?export=view&id=17EOVs2hQlJo9xCUte2vmIIqkDMm3SGup)
![](https://drive.google.com/uc?export=view&id=1FeG0SUJIfEqpBkfXjTeAVokPNxD8h9j8)

### Для реалізації мережі Internet використали мережу з адресою (D+10).M.Y.0/24, поділивши її на підмережі з префіксом /26.  
![](https://drive.google.com/uc?export=view&id=1Ch9xd_4OoMQJfIbkFb3b8Y23SfONyjH6)

### Перевірили зв'язок комп’ютерів з власними шлюзами за допомогою команди ping.
![](https://drive.google.com/uc?export=view&id=15ZX86wF04I6t_bk4a-vVxTIwR3MorEKl)

### Перевірили зв’язок між серверами за допомогою команди ping та маршрут проходження пакета за допомогою tracert.
![](https://drive.google.com/uc?export=view&id=1qNxw__moE6_DsF1lr57W2J9wAC5jBwuC)
Пінг проходить, бо сервери знаходяться в одній мережі 7.28.89.0/24.

### Змінили на серерах маску на 255.255.255.192 та знову перевірили зв'язок.
![](https://drive.google.com/uc?export=view&id=1UtN0p7ClH_DyHjQm4LeE5eo6vXu0E9FA)
Пінг не проходить, бо сервери знаходяться в різних мережах. Мережа 7.28.89.0/16 має 4 підмережі - 0-63, 64-127, 128-191, 192-255.

### Змінити приналежність портів Switch Data Center VLAN таким чином: FE0/2–VLAN2, FE0/3–VLAN3, FE0/4–VLAN4 та ще раз перевірили зв'язок. 
![](https://drive.google.com/uc?export=view&id=17QKyfau5tdVHc3jKz-8cJafmEnJHRQYV)
![](https://drive.google.com/uc?export=view&id=1UtN0p7ClH_DyHjQm4LeE5eo6vXu0E9FA)
Пінг не проходить. Щоб виходити з однієї мережі і заходити в іншу потрібен маршрутизатор.

## Task3.3 – Налаштування маршрутизації

### Перевірили зв'язок, пропінгувавши Web Server мережі Data Center з ПК Client1 мережі Enterprise
![](https://drive.google.com/uc?export=view&id=1jV6va8CAPZQMM-mhKZEMj96B6E9IEFCj)

## Task3.4 – Налаштування DHCP, DNS, NAT
### Налаштували DHCP Pool, вказавши початкову адресу 10.Y.D.10 та адресу Default Gateway – адресу інтерфейсу GE0/0 Router ISP1.
![](https://drive.google.com/uc?export=view&id=1RH2ZUpiRjD6pwfi_Hp5KwV-5QWX8e1jJ)

### Перевірили працездатність сервісу, поставивши в налаштуваннях Client1 та Client2 DHCP.
![](https://drive.google.com/uc?export=view&id=1FGHBkCLiY-4cSxQAnVNDrAKf6BgWpudU)

### Налаштували DHCP на Home Router та перевірили працездатність на Client3
![](https://drive.google.com/uc?export=view&id=1y2i_526SL_OoMltSscWWzUeH9lCy764V)
![](https://drive.google.com/uc?export=view&id=16pqinjyti51ZhxM1puA0li9GDc7Wtt_Z)

### Для налаштування і перевірки роботи DNS сервісу призначили WebServer1 та WebServer2 доменні імена domain1.com та domain2.com відповідно.
![](https://drive.google.com/uc?export=view&id=1PQ7A4gEzwL69bDfL0Qv6lpiE7p-4zqBT)

### Додали до налаштувань DHCP серверів адресу DNS сервера та оновили налаштування на клієнтах.
![](https://drive.google.com/uc?export=view&id=1OK7CGCqcIHOkcgnWEj6ui4nmVXxIM4iw)
![](https://drive.google.com/uc?export=view&id=1Da3JdOV-zgKQKg6s04pZDL81oFtPcH5q)

### Перевірили працездатність DNS сервера шляхом відправки ping з Client на доменне ім’я.
![](https://drive.google.com/uc?export=view&id=1a-fn6wZeFJVvS2s4vVYzyX7ScGMqUWdy)



