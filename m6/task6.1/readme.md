# Виконання домашнього завдання task6.1 – Linux Networking

### 1. Створили підключення до віртуальних машин згідно схеми. 
![](https://drive.google.com/uc?export=view&id=157lvC0FhLMKiy4EqB1aI_EDvExe8NAgf)


### 2. Умова - VM2 має тільки один інтерфейс (внутрішній), VM1 має два інтерфейси (NAT та внутрішній). 
### Завдання - налаштувати всі мережеві інтерфейси так, щоб VM2 мав доступ до Інтернету, використовуючи iptables, forward, masquerade. 
##### Створили 2 віртуальні машини та нашаштували мережві карти згідно умов завдання.
![](https://drive.google.com/uc?export=view&id=16hk3wBvX-BGAjCXawzBPzzwzDsdChf4z)
![](https://drive.google.com/uc?export=view&id=1ZSQjV7Uv1Wv7BylEz7IWuGBOytyTylzn)
##### Перевіримо пінги та мережеві налаштування обох машин
![](https://drive.google.com/uc?export=view&id=169bIgBiYVP0LTw4RNNDlk1fiazUjPrWK)
##### Зробимо мережеві налаштування для наших VM.
- VM1

![](https://drive.google.com/uc?export=view&id=1O5nxJIVIHoUA7aZrFKPIc25JOyKpOHFG)
![](https://drive.google.com/uc?export=view&id=1UKIH2bY--75Zldd-DJeYvcRljR4H9BYi)
- VM2

![](https://drive.google.com/uc?export=view&id=1i7jcpiLaTzPUBZpGw-rBUA_oRom1qJQj)
![](https://drive.google.com/uc?export=view&id=1wUM5jTHJtC83ftwPO1QvoOqZlcNYd1Dy)

##### Перевіримо зв'язок між VM1 та VM2.
![](https://drive.google.com/uc?export=view&id=1JCLYHqGCLaOZuEXGPhwSa2QVvc2ChYFd)

##### Зв'язок є! 
##### Тепер налаштуємо доступ до інтернету у VM2 через VM1.
- Для цього в файлі /etc/sysctl.conf розкоментуємо стрічку "net.ipv4.ip_forward = 1" та перезавантажимо VM1 для прийняття змін.

![](https://drive.google.com/uc?export=view&id=1YzJeA4vej7FrU17O_W-T-9LFm1aVNZDl)
- Та пропишемо налаштування маршруту:
 ```iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE```

![](https://drive.google.com/uc?export=view&id=1qWUYjVRm0dCycQrnqe45I206Y3GA6KB3)


##### За допомогою iptables-persistent збережемо правило маршрутизації та перевіримо чи вони збереглись - на VM1 запустимо команду ```ping``` та перезавантажимо VM1.

![](https://drive.google.com/uc?export=view&id=1-K1Y_38fe0jJVkVadg0zFNmC88aNopzU)



### 3. Перевіримо маршрут від VM2 до хоста (локального комп'ютера 192.168.0.103, на якому встановлено VM1 та VM2)
##### Для перевірки маршруту використаємо команди ```traceroute``` або ```mtr```.
![](https://drive.google.com/uc?export=view&id=1duNimc9OCUoHmDsZVg8fOWZHOfxbpXgd)
 

### 4. Перевірити доступ до інтернету. 
##### Для перевірки доступу до інтернету використаємо команду ```ping```.

![](https://drive.google.com/uc?export=view&id=1OyWIyud_2BmXQY4bi-hqsyd2AsODNxAP)

### 5. Визначити кому належить ip-адреса 8.8.8.8
##### Для перевірки перевірки власності ip-адрес використаємо команду ```host```.
![](https://drive.google.com/uc?export=view&id=1Jb9AyTw0cyPg-uOvU89dl7vJrrDiEd6P)

### 6. Визначити, яка IP-адреса належить ресурсу epam.com.
##### Для визначення ip-адреси ресурсу використаємо команду ```host```, ```dig``` та ```ping```.
![](https://drive.google.com/uc?export=view&id=1_jp3cm8fUx5yOHTs9EWLudFgvcuWKJ6W)


### 7. Визначити шлюз за замовчуванням для нашого HOST і відобразити таблицю маршрутизації.
##### Так, як HOST крутиться на Windows, то для відображення таблиці маршрутизації та визначення шлюза використаємо команду ```netstat -r```.
![](https://drive.google.com/uc?export=view&id=1UTSS26bBY4FfdLMpstn-tifVxLCsC2X-)


### 8. Простежити маршрут до google.com.
##### Для визначення маршруту використаємо команду ```traceroute``` та ```mtr```.
![](https://drive.google.com/uc?export=view&id=19zep3usAtVRmoOr-3bYrNS3R1oaR9gX2)
![](https://drive.google.com/uc?export=view&id=1mP1vMPzVBvYzX07-EN0OQLlffdsv7Qja)

