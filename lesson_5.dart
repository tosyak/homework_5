void main() {
//   1.Если переменная a равна 10, то выведите &#39;Верно&#39;, иначе
// выведите &#39;Неверно&#39;.

  int a = 10;

  switch (a == 10) {
    case true:
      print('true');
      break;

    case false:
      print('false');
      break;
    default:
      print('something went wrong');
  }

//
// 2. Переменная lang может принимать 2 значения: &#39;ru&#39; &#39;en&#39;. Если она
// имеет значение &#39;ru&#39;, то в переменную arr запишем массив дней
// недели на русском языке, а если имеет значение &#39;en&#39; – то на
// английском. Решите задачу через 2 if, через switch-case.
//

  String lang = 'ru';
  List<String> ruDays = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
  List<String> enDays = ['mon', 'tue', 'wed', 'thd', 'frd', 'sat', 'sun'];
  List arr = [];

  switch (lang) {
    case 'ru':
      arr.addAll(ruDays);
      break;
    case 'en':
      arr.addAll(enDays);
      break;
  }

  if (lang == 'ru') {
    arr.addAll(ruDays);
  } else {
    arr.addAll(enDays);
  }

// 3.  Переменная num может принимать 4 значения: 1, 2, 3 или 4.
// Если она имеет значение &#39;1&#39;, то в переменную result запишем &#39;зима&#39;,
// если имеет значение &#39;2&#39; – &#39;весна&#39; и так далее. Решите задачу через
// switch-case.

  int season = 3;

  switch (season) {
    case 1:
      print('winter');
      break;
    case 2:
      print('spring');
      break;
    case 3:
      print('summer');
      break;
    case 4:
      print('fall');
      break;
  }

//
// 4. Составить расписание на неделю. Пользователь вводит
// порядковый номер дня недели и у него на экране
// отображается, то, что запланировано на этот день

  int weekDay = 1;
  switch (weekDay) {
    case 1:
      print('do something on monday');
      break;
    case 2:
      print('do something on tuesday');
      break;
    case 3:
      print('do something on wednesday');
      break;
    case 4:
      print('do something on thursday');
      break;
    case 5:
      print('do something on friday');
      break;
    case 6:
      print('do something on saturday');
      break;
    case 7:
      print('do something on sunday');
      break;
  }

// Циклы while и for
// Решите эти задачи сначала через цикл while, а затем через цикл for.
// 1) Выведите столбец чисел от 1 до 100.

  int x = 11;

  while (x < 100) {
    print(x);
    x++;
  }

  do {
    print(x);
    x++;
  } while (x < 100);

  for (var i = 0; i < 100; i++) {
    print(i);
    i++;
  }

// 2) Выведите столбец чисел от 11 до 33.

  while (x >= 11 && x <= 33) {
    print(x);
    x++;
  }

  do {
    print(x);
    x++;
  } while (x >= 11 && x <= 33);

  for (var i = 0; i >= 11 && i <= 33; i++) {
    print(i);
    i++;
  }

// 3) Выведите столбец четных чисел в промежутке от 0 до 100.

  int y = 0;

  while (y <= 100) {
    print(y);
    y += 2;
  }

  do {
    print(y);
    y += 2;
  } while (y <= 100);

 for (var i = 0; i < 100; i+=2) {
    print(i);
   
  }

  

// 4) С помощью цикла найдите сумму чисел от 1 до 100.

  int i = 1;
  int sum = 0;
  while (i < 100) {
    i += i;
  }
  print(i);

  do {
    sum = sum + i;
    i++;
    print(sum);
  } while (i <= 100);

// 1) Учитывая список цифр, верните наименьшее число, которое можно
// составить из этих цифр, используя цифры только один раз (игнорируя
// дубликаты).

  List arr1 = [1, 2, 3, 4, 5, 5, 6, 3, 1, 1];
  var arr11 = arr1.toSet().toList().join();
  print(arr11);

// 2) Дан массив целых чисел. Найдите максимальное произведение,
// полученное при умножении двух соседних чисел в массиве.

  List arr12 = [1, 2, 3, 1, 5, 5, 6, 12, 3, 1, 1];
  List arr13 = [];

  for (var i = 1; i < arr12.length; i++) {
    int aa = arr12[i - 1] * arr12[i];
    arr13.add(aa);
  }
  arr13.sort();
  print(arr13.last);

// 3) У вас есть массив цифровых чисел, вернуть количество четных
// чисел содержащий данного массива (в том же порядке). Количество
// задется пользовотелем.

  List<int> arr14 = [1, 2, 3, 1, 5, 5, 6, 12, 3, 1, 1];
  List<int> ar = [];

  for (var i = 0; i < arr14.length; i++) {
    if (arr14[i].isOdd) {
      ar.add(arr14[i]);
    }
  }

  print(ar.length);

// 4) Введите пятизначное число: 20453
// Вывести чему равно число под каждым индексом, т.е.
// 1 цифра равна 2
// 2 цифра равна 0
// 3 цифра равна 4
// 4 цифра равна 5
// 5 цифра равна 3

  int taskFour = 20456;
  String taskFourString = taskFour.toString();

  for (var i = 0; i < taskFourString.length; i++) {
    print('$i number is ${taskFourString[i]}');
  }

// 5) Пользователь вводит свой возраст. В зависимости от возраста поставить
// правильно окончание.
// Пример. Пользователь ввел 21, вывод: Вам 21 год.
// Пользователь ввел 22, вывод: Вам 22 года.
// Пользователь ввел 28, вывод: Вам 28 лет.

  int age = 33;
  var ageIterable = age.toString().split('');

  switch (ageIterable.last) {
    case '0':
      print('Вам $age лет');
      break;
    case '1':
      print('Вам $age год');
      break;
    case '2':
      print('Вам $age года');
      break;
    case '3':
      print('Вам $age года');
      break;
    case '4':
      print('Вам $age года');
      break;
    case '5':
      print('Вам $age лет');
      break;
    case '6':
      print('Вам $age лет');
      break;
    case '7':
      print('Вам $age лет');
      break;
    case '8':
      print('Вам $age лет');
      break;
    case '9':
      print('Вам $age лет');
      break;
  }

// 6) Дан массив от 0 до 100. Создайте пустой массив и заполните его через
// цикл. Затем разделите в два массива четные и нечетные числа не
// используя isOdd isEven

  List list = new List<int>.generate(100, (i) => i + 1);

  List odd = [];
  List even = [];

  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      odd.add(list[i]);
    } else {
      even.add(list[i]);
    }
  }

  print(odd);
  print(even);
}
