
---
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

Если указан property position, то дополнительно можно указать properties: left, right, top, bottom (Сдвигать тэг влево, вправо, вверх, вниз). 

Flex объекты: <br>
* display: flex, display: block (элемент становиться флексом. Все элементы внутри флекса становяться его элементами и происходит автоматическая рассатовка элементов внутри флекса). 
* flex-direction: row, row-reverse, column, column-reverse
* flex-wrap: nowrap, wrap, wrap-reverse; (задается правило вывода flex-элементов, wrap - перенос элементов на след. строку, столбец). 
* flex-flow: (сокращенное название для flex-direction, flex-wrap). 
* order: (shows display order of items)
* flex-grow: 1,2,3 (позволяет указывать относительные размеры элементов флекса). 
* flex-shrink: (сжатие элементов если не хватает место в строке, используется вместо flex-wrap если не хотим переносить на след. строку. )
* flex-basis: (определяет минимальный размер элемента флекса). 
* justify-content: flex-start, flex-end, center, space-between, space-around (аналог flex-grow, flex-shrink, позволяет изменять расположение вдоль главной оси). 
* align-items: aligns item among cross-axis (изменение расположение относительно второстепенной оси). 
* align-content - сдвиг элементов вдоль второстепенной оси. 

<h2>HTML Forms</h2>
у тэга form 2 атрибута: action (указывается адрес где будет процессинг формы), method (get, post etc).

Пример:
    
    <!DOCTYPE html>
    <html>
      <head>
        <title>HTML Forms</title>
      </head>
      <body>
        <form action="[value]" method="post">
           Input elements
        </form>
      </body>
    </html>

---
<h2></h2>




