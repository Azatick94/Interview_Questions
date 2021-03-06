<a href=https://www.interviewbit.com/python-interview-questions/>1) Ссылка на вопросы</a>
<br>
<a href=https://kirill-sklyarenko.ru/lenta/150-voprosov-na-sobesedovanie-python-bez-opyta>2) Вторая ссылка</a>
<br>
<a href=https://habr.com/ru/post/439576/>3) Третья ссылка</a>

---
<h2>* Что такое lambda в Питоне</h2>
Это анонимная функция в Питоне, которая принимает на вход любое кол-во аргументов и имеет одно выражение. Чаще всего
используется когда нужно использовать анонимную функцию в короткий период времени.

Примеры:

    mul = lambda a, b : a * b
    print(mul(2, 5))    # output => 10

---
<h2>* Python Decorators.</h2>

* https://realpython.com/primer-on-python-decorators/#a-few-real-world-examples

Это обертка, которая дает нам возможность изменить поведением функции, не изменяя ее код. Декоратор исходит из
функционального программирования.
<br>
Встроенные декораторы в Python. <br>

* @staticmethod - метод становится статичным
* @classmethod - поход на статичным метод, но отличие в том, что первым аргументом принимает сам Класс.
* @property - превращает метод класс в атрибут.

# TODO

---
<h2>* Memory Managements</h2>
Память находится в Private Heap Space. Эта область приватная и программист не имеет доступ к ней. Однако существуют API
для доступа к менеджменту памяти.

---
<h2>* Xrange vs range. Разница?</h2>
Xrange и range выполняют одну и ту же функцию. Обе функции возвращают последовательность чисел. Но range возвращает
List, тогда как Xrange возвращает Xrange объект.

---
<h2>* Global, protected, private variables in Python</h2>
<b>Global</b> - глобальная переменная, доступная из любого места программы.<br>
<b>Protected</b> - атрибуты, пишутся с одним нижним подчеркиванием. Например, _sara. К ним можно получить доступ из
класса и из наследников этого класса.<br>
<b>Private</b> - приватные атрибуты, нельзя получить доступ к ним. Пишутся с двумя нижними подчеркиваниями. Пример, __
sara.

---
<h2>* Нижние подчеркивания в Python</h2>

* https://dbader.org/blog/meaning-of-underscores-in-python
* https://www.geeksforgeeks.org/encapsulation-in-python/

<b>1) Одинарное подчеркивание вначале: _var</b>

Одинарное подчеркивание используется как подсказка для программистов - это означает, что комьюнити разработчиков
предполагает, что одинарное нижнее подчеркивание используется только для внутренних нужд. По факту Python ничего не
делает. Поведение атрибута никак не изменяется.

Пример:

    class Test:
      def __init__(self):
      self.foo = 11
      self._bar = 23


    >>> t = Test()
    >>> t.foo
    11
    >>> t._bar
    23

Как видно из кода атрибут _bar никак не скрыт и может быть получен из объекта Класса Test.

Однако <i>одинарное нижнее подчеркивание</i> все же влияет как будут загружаться атрибуты/методы из модулей.

<b>Пример:</b><br>
Создадим свой модуль my_module

    # This is my_module.py:
    
    def external_func():
    return 23
    
    def _internal_func():
    return 42

Теперь если воспользоваться командой :<br>
<b>>>> from my_module import *</b><br>
то окажется, что метод <b>_internal_func</b> не был загружен.

<b>2) Двойное подчеркивание: __var</b><br>
В случае двойного нижнего подчеркивание Python переименовывает название атрибута, чтобы не возникало коллизий и доступ к
атрибуту был ограничен.

Например атрибут с названием <b>'__baz'</b> переименовывается на <b>'_Test__baz'</b> - где _Test - название класса.  
Доступ к атрибуту '__baz' - отсутствует, только если ссылаться на измененное название атрибута в классе.

---
<h2>* Разница между .py и .pyc расширениями</h2>
.pyc - скомпилированная версия скрипта. Содержит байт-код скрипта.
<br>
Компилированные версии скриптов создаются только для файлов которые импортируются.<br>
Перед тем, как запустить python программу, скрипт компилируется в pyc файл и потом запускается python виртуальной
машиной.

---
<h2>* NameSpace - Пространство имен</h2>
Пространство имен - это система, которая гарантируем, что все имена в программе уникальны и могут использоваться без
конфликтов. Python реализует NameSpace - как словарь (ключ-значение).<br>
Если имя не найдено в пространстве имен, то будет исключение NameError. Список имен можно получить через команду dir()
. <br>

---
<h2>* Что такое Лямбда-выражение</h2>
Лямбда выражение - это простые анонимные функции, записанные в одну строчку. Лямбда пришли в Python из языка Lisp.

---
<h2>*args и **kwargs</h2>

* звезда предназначена для обычных аргументов. То есть одна * распаковывает обычные аргументы. type(args)=tuple<br>
  ** звезды - для именованных аргументов (keyword arguments). ** звезды распаковывают именованные аргументы. type(
  kwargs)=dict

Пример:

    def multiply(a, b, *argv):
    mul = a * b
    
        for num in argv:
            mul *= num
        return mul
    
    print(multiply(1, 2, 3, 4, 5)) #output: 120

Именованные аргументы это пример: a=2, b=3;<br>
**kwargs нельзя распологать перед *args, в противном случае возникнет ошибка.

Пример:

    def tellArguments(**kwargs):
    for key, value in kwargs.items():
    print(key + ": " + value)

    tellArguments(arg1 = "argument 1", arg2 = "argument 2", arg3 = "argument 3")
    #output:
    # arg1: argument 1
    # arg2: argument 2
    # arg3: argument 3

---
<h2>* Недостатки Python языка</h2>

* Интерпретируемая природа питона снижает скорость исполнения программы;
* из-за динамической типизации данных, появляются дополнительные ошибки в исполнении кода;
* слабо развиты возможности доступа к базам данных; поэтому питон не идеальный вариант для приложений с очень большими
  базами данных;
* низкие требования на входе, то есть силы в питоне может попробовать каждый; это иногда снижает качество кода;
* у питона индивидуально выраженный стиль.

---
<h2>* Примеры встроенных функций питона!</h2>

* complex() - создание комплексного числа;
* eval() - исполнение строки;
* filter() - фильтрация элементов;
* format() - создание формата строки;
* hash() - возвращает хэш-значение объекта;
* hex() - преобразование в 16-ричное число;
* input() - аналог Сканнера в Java;
* len() - длина строки;
* locals() - возвращает словарь с локальной таблицей имен;
* open() - открытие файла;

---
<h2>* Python Операторы тождественности</h2>
/>>> 10 is "10"
False
<br>
/>>> True is not False True

Команда is в Python аналогичен == в Java (сравнение ссылок). == в Python-е как equals в Java.

---
<h2>* Как работать с числами, которые не входят в десятичную систему счисления?</h2>

* Бинарные числа 0-1 <b>(префикс 0b или 0B)</b>;<br>
  Для ввода в бинарном формате, используется префикс 0b или 0B;<br>
  Пример: int(ob1010)<br>
  Конвертация числа в бинарный через команду bin();
* Восьмеричные числа <b>(префикс 0o или 0O)</b><br>
  Команда конвертации числа в восьмеричное число: oct(8)<br>
* Шестнадцатеричные числа 0-15 <b>(префикс 0x)</b><br>
  Команда конвертации числа в шестнадцатеричное число: hex(16) <br>

---
<h2>* Что такое генераторы в Питоне</h2>
Генераторы - это функции, которые возвращают итерируюмую коллекцию элементов, Генераторы, в целом, используются для
создания итераторов. Генераторы используют ключевое слово <b>yield</b> в функции.

Пример генератора:

    ## generate fibonacci numbers upto n
    def fib(n):
    p, q = 0, 1
    while(p < n):
    yield p
    p, q = q, p + q
    
    x = fib(10)    # create generator object

    ## iterating using __next__() 
    x.__next__()    # output => 0
    x.__next__()    # output => 1

---
<h2>* В чем разница между итератором и генератором?</h2>
Итератор - интерфейс, предоставляющий доступ к элементам коллекции (массива или контейнера) и навигацию по ним. Итератор
и генератор - довольно тесные термины. Однако итератор - более общая концепция. Это объект, у которого определены два
метода: __next__ и __iter__. С другой стороны, генератор - это итератор. Генератор можно получить с использованием
ключего слова yield в теле функции.
<br>
Ключевое слово yield может обратить любую функцию в генератор.

---
<h2>* Multithreading (многопоточность) vs MultiProcessing (многопроцессность). Разница?</h2>
Многопоточность - (еще встречается термин асинхронное программирование) - это выполнение задач несколькими потоками.<br>
Пример многопоточного программирования:<br>
Вы читаете книгу, а кто-то дает вам еще одну новую книгу. Чтобы приступить ко второй книге придется отложить первую
книгу. По такому принципу происходит многопоточное программирование. Каждому потоку дается определенное кол-во времени,
поток выполняет работу, далее поток засыпает и программа запускает следующий поток. И так по циклу.
<br>
Для многопоточности в Python используется модуль asyncio.

---
<h2>* GIL - Global Interpreter Lock</h2>

* https://tproger.ru/translations/global-interpreter-lock-guide/

GIL - это мьютекс, который разрешает доступ только одному треду в выполнении операций. То есть в любой момент времени
будет выполняться только один конкретный поток.

---
<h2>* Типы данных в Python</h2>

* None тип (NULL значения в Питоне)
* Числовые данные (int, float, complex, bool)
* Последовательности (list, tuple, range, str)
* Мапы (dict)
* Set (set - изменяемый неупорядоченный коллекция уникальных объектов, frozenset - неизмяемая коллекция уникальных
  объектов)

---
<h2>* Проверка типов в Python</h2>

1) Проверять типы переменных можно с помощью встроенного метода type<br>
   Пример: type(a)==int и т.д.

2) Способ с применением функции isinstance(). <br>
   Пример: isinstance(a, int);

---
<h2>* Магические методы в Пайтон. </h2>
Это спец. методы, с помощью которых вы можете добавить в ваши классы магию).<br>
Примеры маг. методов: (__init__ или __lt__). Описание некоторых маг. методов.: <br>

* <b>__new__</b> - это первый метод, который будет вызван при инициализации объекта.
* <b>__init__</b> - инициализатор класса.

---
<h2>* Множественное наследование в Python</h2>

* http://pythonicway.com/education/python-oop-themes/35-python-multiple-inheritance

Python поддерживает множественное наследование. То есть возможность у класса потомка наследовать функционал не от
одного, а от нескольких родителей. Благодаря этому мы можем создавать сложные структуры, сохраняя простой и
легко-поддерживаемый код.

<b>Порядок разрешения методов.</b>Что делать когда у нескольких родителей будут одинаковые методы? Какой метод будет в
данном случае использоваться наследником?<br>
Пример:<br>

    class A:
      def hi(self):
      print("A")
    
    class B(A):
      def hi(self):
      print("B")
    
    class C(A):
      def hi(self):
      print("C")
    
    class D(B, C):
      pass  
    
    d = D()
    d.hi()

Python для определения порядка использует алгоритм <b>поиска в ширину</b>. То есть сначала интерпретатор будет искать
метод hi в классе B, если его там нету - в классе С, потом A.