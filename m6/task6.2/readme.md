# Виконання домашнього завдання task6.2 – Linux Networking

### 1. Створили підключення до віртуальних машин згідно схеми. 
![](https://drive.google.com/uc?export=view&id=1hZmEhjKN5mtu8ZqDAwBNEprEF2GLP13J)
##### Умова - VM1 має два інтерфейси (NAT та внутрішній), VM2 та VM3 має тільки один інтерфейс (внутрішній),

### 2-3. Встановити і налаштувати DHCP сервер на VM1, а також перевірити їхню працездатність.
##### Є декілька методів створення та налашутвання DHCP серверу.
- За допомогою ISC-DHPSERVER - завантажили, ввімкнули його:
 
![](https://drive.google.com/uc?export=view&id=1uV1QoD6zxaGlClIZJ0_WuaI_xE8jRgvK)

налаштували адреси і перезавантажили його ```systemctl restart ics-dhcp-server```:
![](https://drive.google.com/uc?export=view&id=1A2VHx-GgW4aN2VIR1GyxrC9DnynDsUoq)

та перевірили працездатність:
![](https://drive.google.com/uc?export=view&id=1GiQ3AY0lvlo_8e65kJGNByQUZSPJqmWx)

- За допомогою DNSMASQ - завантажили та налаштували адреси:

![](https://drive.google.com/uc?export=view&id=1K--raLKI6YFR_95hfJuIgWdU3Mf-4NhW)

перезавантажили його ```systemctl restart dnsmsq``` та перевірили працездатність:
![](https://drive.google.com/uc?export=view&id=1NasJPe1F2bmNvlzesGgsriXXE3QofJdF)


### 4. Встановити та налаштувати DNS сервер на VM1, а також перевірити на працездатність.
##### Налаштування DNS виконаємо за допомогою вже встановленого DNSMASQ. В файлі налаштувань додамо значення по DNS.
![](https://drive.google.com/uc?export=view&id=1Sh0hveQ2xaqFRfRoXpl58lXKOvWVoqWt)
 

##### Перевіримо роботу DNS сервера за допомогою команди ```ping```.

![](https://drive.google.com/uc?export=view&id=16kssX1azAuZTZnfn7NJr2JlSaqaNdN6j)
