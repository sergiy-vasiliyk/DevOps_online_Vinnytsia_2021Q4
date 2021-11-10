# Виконання домашнього завдання task2.1
## Частина 1. Теорія. Гіпервізори
### Які найпопулярніші гіпервізори для віртуалізації інфраструктури?
- VMware vSphere Hypervisor
- Microsoft Hyper-V
- Citrix XenServer
- Oracle VirtualBox
- KVM

### Коротко опишіть основні відмінності найпопулярніших гіпервізорів.
Різниця між гіпервізорами в тому, що одні працюють безпосередньо на рівні апаратної частини хоста (Hyper-v, ESX, Xen), а інші запускаються на рівні операційної системи хоста (Vmware, VirtualBox, MS Virtual PC). 

## Частина 2. Практична робота. VirtualBox
З офіційного сайту https://www.virtualbox.org/ було завантажено та встановлено останню версію VirtualBox для Windows.
Також було завантажено останню версію Ubuntu 20.04 для проведення практичних робіт.
### Створення нової віртуальної машини з Ububntu 20.04
При створенні віртуальної машини ми вибирали ввели назву машини (VM1_Vasiliyk), тип ОС та надали мінімальні потрібні технічні характеристики (1 ядро, 1Гб оперативка та 10Гб жорсткого диску)

![](https://drive.google.com/uc?export=view&id=1CwCAh_S9Ey6U1zCzmpfwhW3cxucWNV4H)
![](https://drive.google.com/uc?export=view&id=1UJ13yfHc7vJtQX1z7irCZIOgNItyyVQf)

### Зробили клон створеної віртальної машини (VM2_Vasiliyk) та сторили групу віртальних машин (test_group)
![](https://drive.google.com/uc?export=view&id=1kVYLVJLTXGyEmKpmud7kLd5UgsMjDCkg)
### Зробили декілька Snapshot VM1_Vasiliyk.
![](https://drive.google.com/uc?export=view&id=1xtgdqyLanV-KOCMRT19D8f55XcnRPXWh)
### Вивантажили через експорт VM1_Vasiliyk.ova та відновили його в VM3_Vasiliyk
![](https://drive.google.com/uc?export=view&id=17ByCWVtfK_WaouDSdTneEucV7TmLw678)
![](https://drive.google.com/uc?export=view&id=1uMw-8yfXSlKs8zJIgpACRHasxbmR29nr)
### Налаштували роботу USB та зробили shared folder між віртуальною та фізичною машинами
![](https://drive.google.com/uc?export=view&id=10g9tfnQNz7OG6tAlxZ13WN1orY_3yJXi)
![](https://drive.google.com/uc?export=view&id=1fjFu7FWifUQE9ChzBKpnyFM1J7sZ6cSN)
### Налаштували та перевірили (за допомогою команди ping) роботу типи мережевих адаптерів
![](https://drive.google.com/uc?export=view&id=18HlGJveGZsX9wTDVh0eIfQjwWBCG1ng4)
| Mode       | VM -> Host                | VM <- Host |VM1 <-> VM2| VM -> Net/LAN |VM -> Net/LAN
| ------------- |:------------------:| -----:|-----:|-----:|-----:|
| Host-only     | +    |+    | +   |- | -   |
| Internal     | - |  -  |+| - |  -  |
| Bridged  | + |  +  |+| + |  +  |
| NAT     | + |  Port forward  |-| + |  Port forward  |
| NATservice     | + |  Port forward  |+| + |  Port forward  
### "Поклацали" віртуалку за допомогою CLI (запустили, подивлись інформацію, вимкнули та ін.)
![](https://drive.google.com/uc?export=view&id=1DqoWIK5_jplM1621D1XegC4YeDhoeE9q)
![](https://drive.google.com/uc?export=view&id=10aOKAbHqOjTFBlrFe5rLu938c2mXqXWS)
![](https://drive.google.com/uc?export=view&id=1mnWhfKgqX2LPZEWMf9dIuOQ6M4DIn6ET)
## Частина 3. Практична робота. Vagrant
З офіційного сайту завантажили та встановили останню версію Vagrant для Windows. Налаштували змінну оточення VAGRANT_HOME. 
Через PowerShell створили в корні диска С папку "Sergiy". Ініціалізували бокс (hashicorp/precise64) та запустили vagrand. З'эднались до нього по putty та перевірили актуальну дату.
![](https://drive.google.com/uc?export=view&id=1DaLmpjpwZAAn6xDzhZW_Dnt8embNIGvk)
### Зупинив та видалив віртуалку
![](https://drive.google.com/uc?export=view&id=1XMNAmduhTsiFkfH5cVM_niTAbpqFZBXo)
### Створив Vagrant box з існуючої VM1_Vasiliyk
Для унікальності бокса встановив на віртуалку VM1_Vasiliyk веб-сервер та зробив легенький index.html
![](https://drive.google.com/uc?export=view&id=1GUXtIIcmUcAZys1PH-2cjOWW2aNYMWzc)
### Перевіряємо список боксів та впевнюємось, що наш бокс створено
```sh
vagrant box list
```
![](https://drive.google.com/uc?export=view&id=1QXz3grEuEcqppbUZpSAgmwqNymtCfgAt)
### Запускаємо наш бокс для перевірки
```sh
vagrant up
```
![](https://drive.google.com/uc?export=view&id=1rslt1hptgL8ElVpDBsmCPgatSopg2H5i)






