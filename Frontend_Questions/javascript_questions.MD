
<h2>Common HTML Events</h2>
Here is a list of some common HTML events:
* onchange	- An HTML element has been changed 
* onclick -	The user clicks an HTML element 
* onmouseover -	The user moves the mouse over an HTML element
* onmouseout -	The user moves the mouse away from an HTML element
* onkeydown -	The user pushes a keyboard key
* onload -	The browser has finished loading the page

---
<h2>* What is Ajax?</h2>
AJAX = Asynchronous JavaScript And XML.

AJAX is not a programming language.
AJAX just uses a combination of:

A browser built-in XMLHttpRequest object (to request data from a web server)
JavaScript and HTML DOM (to display or use the data)

AJAX allows web pages to be updated asynchronously by exchanging data with a web server behind the scenes. This means that it is possible to update parts of a web page, without reloading the whole page.

---
<h2>* Что такое DOM? Примеры. </h2>
DOM - document object model; 

* https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction 
* https://www.w3schools.com/jsref/dom_obj_style.asp

Примеры как с помощью DOM можно найти необходимые тэги и изменять их характеристики.
<br>

* <b>document.getElementsByTagName("li")[1].style.color = "blue";</b> - найти элемент с тэгом li, взять 2 элемент и изменить цвет на синий.
* <b>document.getElementsByTagName("li")[1].innerHTML = "second_Element";</b> - найти элемент с тэгом li, взять 2 элемент и изменить текст.
* <b>document.querySelector("h1.hello").innerHTML = "Changed_Text";</b> - найти элемент с тэгом h1 и с названием класса = "hello" и изменить текст. 
* <b>document.getElementsByClassName("hello")[0].innerHTML="Changed2";</b> - найти элемент с названием класса = "hello" и изменить его текст. 

* <b>document.querySelector("h1").classList.add("huge")</b> - найти элемент с тэгом = h1 и добавить к нему класс="huge".
* <b>document.querySelector("h1").classList.remove("huge")</b> - найти элемент с тэгом = h1 и удалить класс="huge". 

* <b>document.querySelector("a").setAttribute("href", "https://www.bing.com")</b> - найти элемент с тэгом = a и изменить его атрибут href. 

