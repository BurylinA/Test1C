#language: ru

@tree

Функционал: Работа с документом "Заказ"

Как Менеджер по продажам я убедиться в корректной работе документа "Заказ"

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Проверка расчета итоговой суммы в документе "Заказ"
// Открывает уже созданный ранее документ для тестирования
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Дата'                | 'Номер'     |
		| '21.12.2020 18:43:00' | '000000018' |
* Редактирование данных для проверки итоговой суммы документа
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'  | 'Цена'  |
		| '250'        | '8 750,00' | 'Йогурт' | '35,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '22,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '8 250'
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'  |
		| '50'         | '2 750,00' | 'Ряженка' | '55,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '45'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен '7 975'


