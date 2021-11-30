# Виконання домашнього завдання task4.1 – Адміністрування баз даних
## Частина 1
### Встановили на Ubuntu MySQL
``` 
apt install mysql-server
```
![](https://drive.google.com/uc?export=view&id=1mtXWp1typfmyqtExY01o0m5I_ixoFpuj)
### Вирішили розробляти базу даних сервісу оренди авто
![](https://drive.google.com/uc?export=view&id=1ZLYwDqsk-jiPRo1QlMEOQHt6c1P6hbW1)

### Створили базу даних за допомогою CLI
``` 
CREATE DATABASE rent_car;
```
![](https://drive.google.com/uc?export=view&id=1AGkIZ4Nbs1tiOwqTQRxFlvzcNFtRVNtJ)

### Створили таблиці в базі даних

![](https://drive.google.com/uc?export=view&id=1EIquurRwv29CTt28tvJYGisGvTSJVSuu)

![](https://drive.google.com/uc?export=view&id=10N429SxTT9uvs-G06CJl8bZ0GJL5Om24)

### Заповнили всі таблиці даними
![](https://drive.google.com/uc?export=view&id=1eIhYH9fHzknTVCTIRgm6n5E7b-_DvBuu)

### Виконали вибірку даних через оператора SELECT з використанням WHERE, ORDER BY and GROUP BY
![](https://drive.google.com/uc?export=view&id=1eHj6pPKK95eyAoj0xJ3Uma7Z7gwW0vs5)
![](https://drive.google.com/uc?export=view&id=1mGxhFwbIQL56TXfyzTfyYRIWcZMO5xrv)

### Виконали різні SQL запити DDL (CREATE, ALTER, DROP), DML (SELECT, INSERT, UPDATE, DELETE), DCL (GRANT, REVOKE, DENY)  
![](https://drive.google.com/uc?export=view&id=1ijkE6yJC_dLEn1wlqV0Spq81bF4d6IPL)
![](https://drive.google.com/uc?export=view&id=1pKaZ7GWNWp29knCUhACHoMFNt-daR4pK)

### Створили користувачів з різними правами доступа до бази даних.
![](https://drive.google.com/uc?export=view&id=14On2QZwatCbukccHWb68mi_PjLTLPWkM)

### Перевірили права доступу створених користувачів
![](https://drive.google.com/uc?export=view&id=1ZRr6N7LkYkS1S0mr_iqkHV64InmWz9G2)

### Зробили вибірку даних з таблиці DB бази даних MySQL
![](https://drive.google.com/uc?export=view&id=13HiWfJgpeJEPtei9D2up5hqLiOOuh2wl)
![](https://drive.google.com/uc?export=view&id=1xe_bjKI40nuacoqLkyU96zA8PQr3EOog)

## Частина 2

### Зробили резервну копію нашої бази даних
![](https://drive.google.com/uc?export=view&id=1Pk8QhlSD3R7Bd_h1l6kNvKKmORT6Lrq9)
### Видалили таблицю Cars та відновили базу даних з резервної копії
![](https://drive.google.com/uc?export=view&id=1LetIloLJJ26R_5kvJIZsGGSOa9oYMnN8)

### Перенесемо нашу базу на AWS RDS. Для цього створили базу даних vasiliyk-db через інтерфейс RDS, з'єднались з нею через CLI і створили базу даних rent_car, в яку будемо відновлювати локальну базу.
![](https://drive.google.com/uc?export=view&id=1vZ1uLZyZ5n5E_hgwgMXbbT9DPnY2646P)
![](https://drive.google.com/uc?export=view&id=1jAcgLRJCk_sS6spECI1q2lmXBEwNnxNe)
### Відновили базу даних в AWS RDS з локальної резервної копії
![](https://drive.google.com/uc?export=view&id=1hSQpz3Clqk7iub-v7xIacbjhmfdx3fk0)
### Для детальної перевірки перенесення бази на RDS виконали вибірку даних через оператора SELECT з використанням WHERE, ORDER BY and GROUP BY
![](https://drive.google.com/uc?export=view&id=1raRUh6jf-0fQzQGd9T4PzjuHeXIiKBK5)
### Створили дамп бази за допомогою Снепшотів RDS
![](https://drive.google.com/uc?export=view&id=1XFiomJ-XWlAM-2IWOUBc5_k6LeFTOMl2)



