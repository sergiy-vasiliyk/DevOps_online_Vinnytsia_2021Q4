# Виконання домашнього завдання task5.1 – Linux Essentials
## Частина 1
### Зайшли в систему під користувачем root та змінили йому пароль
![](https://drive.google.com/uc?export=view&id=1JgKcOYXiOYSVChCo6ADQ2Ry48iBOepdR)
### За допомогою info passwd дізнались, що пароль зберігається в файлі /etc/shadow
![](https://drive.google.com/uc?export=view&id=1Vxtg4gEqz4jIItymIzQzDONeC1cIjEOy)
### Визначили користувачів, які зареєстровані в системі та подивились, що вони роблять.
![](https://drive.google.com/uc?export=view&id=1diCmQzfB-s0XTvw-MQzMvdWepdJx9FQq)
### Визначили користувачів, які зареєстровані в системі та подивились, що вони роблять.
![](https://drive.google.com/uc?export=view&id=1diCmQzfB-s0XTvw-MQzMvdWepdJx9FQq)
##### Список запущених користувачів в системі можна подивитись за допомjгою команди "w". Вона показує:
- час запуску команди, 
- час роботи системи від останнього перезавнатження, 
- кількість активних користувачів, 
- середнє значення навантаження системи за останні 1, 5, 15 хвилин.

##### В таблиці відображаються:
- ім'я користувача, 
- назва сеансу, 
- ip-адреса віддаленого ПК, 
- час входу в систему, 
- час бездіяльності, 
- час активної дії, 
- час активної дії процесу, який вказаний в наступному полі, 
- поточний запущений процес.  

### Змінили персональну інформацію про себе.
![](https://drive.google.com/uc?export=view&id=1u85EVvdFRCz9b1snzFpAHNbbVcEoMGUE)

### Ознайомились з довідковою системою Linux - командами man та info. Переглянули довідку команд "w" та "passwd". Вибрали для пояснення та опису два ключі цих команд. Наводимо приклад.
##### Для команди "w" протестуємо ключі:


       -i, --ip-addr
              Відображати IP-адресу замість імені хоста

       -V, --version
              Відобразити інформацію про версію
![](https://drive.google.com/uc?export=view&id=1WefgQfLvOQIadBfWn8A0n6ALeRBBqqND)
##### Для команди "passwd" протестуємо ключі:
       -n, --mindays MIN_DAYS
              мінімально допустима кількість днів між змінами паролю. Якшо поле залишити пустим, то пароль діє безстроково.

       -x, --maxdays MAX_DAYS
              максимально допустима кількість днів використання паролю. Якшо ввести ключ "-1", то перевірка  цього запиту буде вимкнена.

![](https://drive.google.com/uc?export=view&id=10anghvXe6asdKCatOI5V3uQpjfMHVQTq)
![](https://drive.google.com/uc?export=view&id=1IpPhIlSyNxwlBLIyiRwdZFQV9ifLspcq)

### Вивчили команди «більше» та «менше» за допомогою довідкової системи. Переглянули вміст файлів .bash* за допомогою цих команд.
###### Команда "more" виводить усі файли, вибрані маскою .bash*, підряд - сторінка за сторінкою. Команда "less" виводить файли один за одним, і ми можемо переміщатися по кожному файлу та вибирати наступний файл за допомогою команди ":n" або попередній файл за допомогою ":p".


### В полі для додаткових даних про користувача додали інформацію, що ми працюємо над лабораторною роботою. 
![](https://drive.google.com/uc?export=view&id=1qJNbol6BT4u9ZyVK-LU63tIn7Bi8viTD)
![](https://drive.google.com/uc?export=view&id=1xyjPsYHOWfifaSLRMoqgCkWknKa6LNr7)

### Переглянули вміст домашнього каталогу за допомогою команди ls, визначили файли та каталоги.
![](https://drive.google.com/uc?export=view&id=1Oxo80vhMuNYLfGneUFyQkMPOp6donxFF)
##### Об'єкти позначені синім кольором - папки, червоним кольором - архіви, білим кольором - файли.

## Частина 2
### Переглянули команду "tree". Опанували техніку застосування шаблону:
- відобразили всі файли, які містять символ 'c', 's';
- відобразили файли, які містять послідовність символів 'txt'.
(перелік підкаталогів кореневого каталогу - до другого рівня вкладеності включно)
![](https://drive.google.com/uc?export=view&id=18ozjbFNAEKNnpnAPgCJfSRcN0e9gUqYF)

### Для визначення типу файлу використовуэться комманда "file *"
![](https://drive.google.com/uc?export=view&id=1qp6ghFDcjq5Wc1uQBYWvpnnaSz-2hxT6)

### Абсолютний шлях - це шлях від кореневої папки.
### Відносний шлях - це шлях від папки поточного користувача (/home/user/...). В любий момент можна попасти в домашню папки за допомогою команд 
```
"cd ~"
"cd $home"
```
![](https://drive.google.com/uc?export=view&id=1gTlXfWJ5GZh5jl7pOtte2xD_RhHbcVAy)

### Ознайомились з різними параметрами для команди "ls".
##### -l - виводить детальний список, у якому буде відображатися власник, група, дані створення, розмір та інші параметри;
##### -a - відображає всі файли, включаючи приховані. 
![](https://drive.google.com/uc?export=view&id=1TX5R8r1JftWqL4sO7W3L1NsXShP3W_Hc)
![](https://drive.google.com/uc?export=view&id=1_xK7-mNh9jlo-63Xc1OlfQ-okxndgMGJ)

### Виконали наступну послідовність:
##### Створили підкаталог у домашньому каталозі
![](https://drive.google.com/uc?export=view&id=1GCyhuWPqbit8jabg5Nra2iXCoNyOStGv)

##### У цьому підкаталозі створили файл, що містить інформацію про каталоги, розташовані в кореневому каталозі (за допомогою операцій перенаправлення вводу-виводу)
![](https://drive.google.com/uc?export=view&id=1fhqsSaGs7tQ5T_VmWDKyxWlQba4x6zwM)
![](https://drive.google.com/uc?export=view&id=1yY4KtQa_7slW8M_zSb6Dq25U__WMOaVP)

##### Скопіювали створений файл у свій домашній каталог, використовуючи відносну та абсолютну адресацію
![](https://drive.google.com/uc?export=view&id=1XL8p53rGIahKpIuR5k-fZmFt8Fj6OhhR)
![](https://drive.google.com/uc?export=view&id=1SgW9-0JBFxEF_Y0TS46cXt6OzVAFTRv1)
![](https://drive.google.com/uc?export=view&id=1Z7IaxzZUEhnH7HWq8sIWzxzOKiognYdu)

##### Видалили раніше створений підкаталог із файлом, із запитом на видалення, а також видалили файл, скопійований у домашній каталог.
![](https://drive.google.com/uc?export=view&id=1sKxhJg_VkHDIu5IIq_Hj_QmZzl6lCoEy)
![](https://drive.google.com/uc?export=view&id=16ey2N8l4xqwvTZLU80c_K4Qio6r2S6X5)

### Виконали наступну послідовність:
##### Свторили підкаталог "test" у домашньому каталозі
![](https://drive.google.com/uc?export=view&id=19SWc9JI1w3jIwLkZgdXdbd47jXkipMZJ)

##### Cкопіювали файл .bash_history до цього каталогу, змінивши його назву на labwork2
![](https://drive.google.com/uc?export=view&id=17ww8JdDY3sqUZVc2ksrY4QCLALyVi_Sm)

##### Створили хардлінк та софтлінк посилання на labwork2 у підкаталозі test
![](https://drive.google.com/uc?export=view&id=1zyUbU9KYs8it5HeQG75sG7lQMwrXZNVn)
###### Створюючи жорстке посилання («hard link») на файл, ми прив'язуємося до його індексного номера, отримуючи той самий файл (але з новим ім'ям).
###### Символьне посилання ("symlink" від англ "symbolic link"), на відміну від жорсткого посилання, вказує не на індексний номер файлу, а на його ім'я (шлях).

###### Як визначити? 
- у хардлінка індексний номер буде такий самий, як і в оригінального файла.
- у софтлінка індексний номер буде не такий самий, як в оригінального файла. Також при перегляді списку файлів командою ls -li буде видно посилання нового файла на оригінальний файл.


##### Змінити дані в файлі сімлінк. Перейменували файл хардлінка на hard_lnk_labwork2, а файл сімлінка на файл symb_lnk_labwork2. Потім видалили папку labwork. 
![](https://drive.google.com/uc?export=view&id=1o1lQ08V7Pjk8T_rkc4P8t8CPSEeppvM_)
##### Пояснення: При зміні даних файлу софтлінка - дані змінюються і у оригінального файла, тому що софтлінк - це створення посилання на оригінальний файл без створнення нового окремого файлу.
##### При видаленні оригінального файла:
- у хардлінка не змінився індексний номер та вміст файлу, оскільки жорстке посилання є копією вихідного файлу.
- у софтлінка не змінився індексний номер але файл не відкривається, оскільки насправді воно є посиланням на файл.


### За допомогою утиліти locate знайшли всі файли, які містять послідовність squid і traceroute.
![](https://drive.google.com/uc?export=view&id=1VkdzgPuBL-1OddibYnjP7q56BkJ79eD_)

### Визначили, які розділи змонтовано в системі, а також типи цих розділів.
![](https://drive.google.com/uc?export=view&id=1sbRUv8A8Fl2l3RGxr5vy7SMIxDitbEnZ)

### Порахували кількість рядків, що містять задану послідовність символів у файлі.
![](https://drive.google.com/uc?export=view&id=1slxUytbpiacRdiZ7UEjYa12htK3zNZpU)
![](https://drive.google.com/uc?export=view&id=1ZeC3eXK9TvG8TzwMCushd9P7QOhUYIbK)

### За допомогою команди find знайшли всі файли в каталозі /etc, що містять послідовність символів host.
![](https://drive.google.com/uc?export=view&id=1oOZMJCdXHJY9TkgZR5yu4FhQDNjvww4_)

### Перерахували всі об'єкти в /etc, які містять послідовність символів "ss".
![](https://drive.google.com/uc?export=view&id=1AzVOkeHBRYq__1QKWk_u4tEk21SFLFwU)

### Вивели вміст каталогу /etc в текстовий файл.
![](https://drive.google.com/uc?export=view&id=1IiMrHixjEcukO8EClAgEjJEe20-iObtN)

### Розібрались з типами пристроїв та зрозуміли як визначити тип пристрою?
![](https://drive.google.com/uc?export=view&id=1MjKX2n1zb8oBuWgEApxJvhFxEePgMD96)
##### Типи пристрою:
- блочні (диски)
- символьні (клавіатура, мишка ,інша периферія)

##### Зверніть увагу на перший символ у кожному рядку. Він вказує тип пристрою. Символом "b" – позначаються блокові пристрої linux (block), а символом "c" – символьні (character).

### Навчились визначати типи файлу в системі.
![](https://drive.google.com/uc?export=view&id=1l-gmlgsSLP-jJHBwG9FVQIZi_AYHuyXN)
##### Типи файлів:

-- -  звичайний файл;
d - каталоги;
c - символьні пристрої;
b - блочні пристрої;
s - сокети;
p - канали;
l - символьні посилання.

### Вивели на екран перші 5 файлів каталогу /etc, до яких нещодавно зверталися.
![](https://drive.google.com/uc?export=view&id=1MJ5FKriEBAkebz8OXKJYfhDhRSYhnrZA)
