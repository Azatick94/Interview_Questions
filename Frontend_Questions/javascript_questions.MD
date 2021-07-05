
---
<h2>* Common HTML Events</h2>
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


---
<h2>JQuery? Что за фрейворк. </h2>


Сравнение JQuery селектора с селектором на обычном JS:<br>

// поиск тэга
* document.querySelector("h1") - JS поиск h1 тэга
* $("h1") - аналогичная операция с помощью JQuery
 

// изменение стиля, добавление стиля
* $("h1").addClass("big-title");

// удаление стиля
* $("h1").removeClass("big-title");

// добавление нескольких стилей
* $("h1").addClass("big-title margin-50");

// проверка наличие класса у тэга
* $("h1").hasClass("margin-50");

// изменяет текст у всех тэгов h1
* $("h1").text("Bye");

// изменение html контента
* $("h1").html("<em>Hey</em>");

// получение атрибута тэга
* $("img").attr("src"); 

// изменение/сохранение атрибута тэга
* $("img").attr("src", "https://www.yahoo.com")

// добавление Событий/Events (при нажатии button, будет изменяться цвета всех h1 тэгов на фиолетовый)
* $("button").click(function() {
	$("h1").css("color", "purple")
})

// при нажатии кнопки, в консоли будет выводиться все то, что нажимается
* $(document).keypress(function(event) {
	console.log(event.key); 
})

// аналогичная выше операция реализованная другим способом
* $(document).on("keypress", function(event) {
	console.log(event.key); 
})

// добавление и удаление элементов из html
* $("h1").before("<button>New</button>"); - добавить до указанного элемента
* $("h1").after("<button>New</button>");  - добавить после указанного элемента
* $("h1").prepend("<button>New</button>"); - добавить внутрь элемента вначало
* $("h1").append("<button>New</button>"); - добавить внутрь элемента в конец
* $("h1").remove(); - удаление всех элементов с тэгом h1


// добавление анимаций: появление, исчезновение элементов. 
* $("h1").hide(); - сокрытие элемента
* $("h1").show(); - показать элемент
* $("h1").fadeOut(); - скрыть элемент с анимацией
* $("h1").fadeIn(); - показать элемент с анимацией
* $("h1").fadeToggle(); - fadeOut+fadeIn
* $("h1").slideUp(); - показать слайдом
* $("h1").slideDown(); - скрыть слайдом
* $("h1").slideToggle; - slideUp+slideDown

* $("button").on("click", function() {
	$("h1").slideUp().slideDown().animate({opacity: 0.5});
})  - при нажатии выполняется последовательность операция slideUp + slideDown + изменение прозрачности

---
<h2>JQuery Ajax</h2>

Ajax - Asunchronous JavaScript and XML. <br>

* https://www.w3schools.com/jquERy/jquery_ajax_load.asp


### 1) jQuery load() команда:<br>
Позволяет загружать данные из сервера и вставляет загруженные данные в выбранный элемент. <br>

Пример:
Есть txt файл "demo_test.txt" 


		<h2>jQuery and AJAX is FUN!!!</h2>
		<p id="p1">This is some text in a paragraph.</p>



И сам запрос:


		$("#div1").load("demo_test.txt");


В этом запросе jQuery запрашивает тэг с id=div1 и вставляет в него содержимое из файла "demo_test.txt"

### 2) jQuery Get & Post запросы: <br>

Наиболее часто используемые методы для общения клиента с сервером. 

* Get запрос (URL - директория, куда будет делаться запрос, callback - функция, которая будет выполняться в случае успеха)

		$.get(URL,callback);

Пример (делается запрос к "demo_test.asp" и в случае успеха появляется окно с данными страницы):

		$("button").click(function(){
		  $.get("demo_test.asp", function(data, status){
		    alert("Data: " + data + "\nStatus: " + status);
		  });
		});


* Post запрос (URL - директория, куда будет делаться запрос, data - доп. данные, сопутствующие запросу, callback - функция, которая будет выполняться в случае успеха)

		$.post(URL,data,callback);


Пример (делается запрос к "demo_test_post.asp" и в случае успеха появляется окно с данными страницы):


		$("button").click(function(){
		  $.post("demo_test_post.asp",
		  {
		    name: "Donald Duck",
		    city: "Duckburg"
		  },
		  function(data, status){
		    alert("Data: " + data + "\nStatus: " + status);
		  });
		});

