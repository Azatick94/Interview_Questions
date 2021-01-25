
<h2>* Атрибуты тэгов в HTML файле</h2>
У тега могут быть следующие атрибуты: <b>id, class</b>; <br>
Отличие в том, что id должен быть уникальным, а class может повторяться для разных тэгов. <br>

Пример атрибута id

        <h1 id="title">Good Morning!</h1>

Пример атрибута class 

        <h1 class="blue">Desired job:</h1>
        <p class="blue">Frontend developer</p>
        <h2 class="blue">My skills:</h2>
        <p class="blue">I know HTML and CSS</p>

Тэг может иметь одновременно несколько атрибутов class. Пример:

        <p class="black big-text">Hi!</p>

---
<h2>* Как подключать css шаблоны в html</h2>

Виды подключений css стилей

* Через внешний файл
Для этого используется тэг link. Пример:

        <!DOCTYPE html>
        <html>
          <head>
            <meta charset="utf-8">
            <title>Connecting External CSS to HTML</title>
            <link rel="stylesheet" href="style.css">
          </head>
          <body>
          </body>
        </html>

* Внутри html через тэг style

        <!DOCTYPE html>
        <html>
          <head>
            <meta charset="utf-8">
            <title>Connecting Internal CSS to HTML</title>
            <style>
              There should be a CSS code here
            </style>
          </head>
          <body>
          </body>
        </html>

* Через атрибут style для отдельного тэга

        <!DOCTYPE html>
        <html>
          <head>
            <meta charset="utf-8">
            <title>Connecting Internal CSS to HTML</title>
          </head>
          <body>
            <p style="css property; css property;">Inline CSS</p>
          </body>
        </html>

---
<h2>Как устроен CSS? Какие бывают селекторы. </h2>

* Обычный тэг селектор 

        selector { property: value; }
selector - это тэг к которому будет применяться стиль. <br>
property - название параметра <br>
value - значение параметра <br>

* id Selector (если хотим выбрать тэги с id=какой-нибудь величине)
      
  
        #big {
        font-size: 30px;
        }


* class Selector (присваиваем стиль для тэгов с названием класс=какой-нибудь величине)

        .blue {
        background-color: blue;
        }


---
<h2>* Основные css property </h2>

* color - цвет тэга
* background-color - цвет background-а
* border-style - стиль границы
* border-style - цвет границы
* border-width - мощность границы. 
* width, height - длина и широка объекта. Разновидности: min-width, max-width, height, height. 
* padding - сдвиг элемента внутри другого элемента. Варианты: left, right, top, bottom или через CSS units (padding-right: 5%). 
* margin - сдвиг элемента относительно другого элемента. 

Пример кода для padding & margin:

    p {
    font-size: 1.5em;
    background-color: black;
    margin: 10px;
    padding: 5px;
    }

* position - указывает позицию элемента. <br>
Варианты: <br>
  0) position: static (обычная последовательное расположение тэгов в файле)
  1) position: absolute (абсолютная позиция). 
  2) position: relative (позиция относительно тэга)
  3) position: fixed (позиция фиксирована при скроллинге страницы)
  4) position: sticky (позиция изменяется, но перестает изменяться при достижении определенного уровня скроллинга)




