# Виконання домашнього завдання task1.1
## Встановили git на ПК
В мене на ПК встановлено ОС Ubuntu 20.04
```sh
sudo apt install git
```
## Налаштували дефолтні файли конфігурації та редактор тексту
```sh
git config --global user.name "Sergiy"
git config --global user.email sergiy.vasiliyk@gmail.com
git config --global core.editor nano
```
## Зареєтрувались на GitHub та створили приватний репозиторій "DevOps_online_Vinnytsia_2021Q4"
Описувати цей процес не буду, бо тут все лементарно.Результат на скріні:
![N](https://wdfiles.ru/plugins/imageviewer/site/thumb.php?s=3b6881)

## Клонували репозиторій на локальний ПК
```sh
git clone https://github.com/sergiy-vasiliyk/DevOps_online_Vinnytsia_2021Q4.git
```
## Після отримання репозиторія на локальному ПК створили структуру папок m1/task1.1
```sh
mkdir m1
cd m1
mkdir task1.1
cd task1.1
```
## В папці task1.1 створили пустий файл readme.txt та закомітили його 
```sh
touch readme.txt
git add .
git commit -m "add readme.txt"
```
## Створили нову гілку "develop". На ній cтворили пустий index.html та закомітили свої дії
```sh
git branch develop
git checkout develop
touch index.html
git add .
git commit -m "add branch develop with index.html"
```

## Створили нову гілку "images". На ній cтворили папку "images" та поклали в папку дві картинки.Зкомітили свої дії
```sh
git branch images
git checkout images
mkdir images
```
через gui скопіювали дві картинки в створену папку і продовжили
```sh
git add .
git commit -m "add branch images with fokder images and images cat.jpg and pizza.jpg"
```
## Додали в файл index.html шлях до картинок cat.jpg та pizza.jpg і закомітили наші дії
```sh
nano index.html
git add .
git commit -m "add source jpg in index.html"
```
## Повернулись на гілку "develop", свторили нову гілку "styles". На ній додали папку "styles" з файлами .css всередині. Змінили index.html (додали посилання на header.css). Закомітили наші дії
```sh
git checkout develop
git branch styles
git checkout styles
mkdir styles
cd styles
touch header.css
nano index.html
git add .
git commit -m "add branch styles with folder styles and header.css"
```
## Повернулись на гілку "develop" та замерджили дві новостворені гілки (images та styles) в гілку develop
```sh
git checkout develop
git merge images
git merge styles
```
> При об'єднанні гілки styles: `git merge styles`  отримали помилку - "є зміни одного файла в обох гілках". Вирішували так - відкрили проблемний файл, побачили зміни з обох гілок і залишили актуальні:

```sh
nano index.html (тут дивилиь на зміни та зберегли актуальні)
git add. 
git commit -m "merge images and styles into develop"
```

## Повернулись на гілку "master" та замерджили develop
```sh
git checkout master
git merge develop
git add.
git commit -m "merge develop into master"
```
## Переглянули log з візуалізацією гілок
```sh
git log --all --graph --pretty=format:'%Cred%h%Creset -%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
```
![](https://github.com/sergiy-vasiliyk/DevOps_online_Vinnytsia_2021Q4/blob/master/m1/task1.1/images/gitlog.png)

## Відправили всі зміни на GitHub та перевірили їх наявність на сайті
```sh
git push origin --all
```
![N](https://github.com/sergiy-vasiliyk/DevOps_online_Vinnytsia_2021Q4/blob/master/m1/task1.1/images/github_new.png)


## Виконали "git reflog" та зберегли результат в task1.1_GIT.txt, який потім перекинули в локальний репозиторій і запушили на gitlab.
```sh
cd ..
git reflog > task1.1_GIT.txt
cp ~/task1.1_GIT.txt ~/DevOps_online_Vinnytsia_2021Q4/
git add .
git commit -m "add reflog task1.1_GIT.txt"
git push origin --all
```


## Що таке DevOps?
З першої лекції та першого домашнього завдання я зрозумів, шо це спеціаліст, який добре розуміється в системному адмініструванні і має розуміння в моментах розробки. Візуально оцінюючи код, ТЗ, картинку він має знати:
- де це має працювати; 
- з якими технічними характеристиками мають бути сервіси чи ПК, на якому це має працювати;
- завдяки яких сервісів це треба запустити в роботу.
