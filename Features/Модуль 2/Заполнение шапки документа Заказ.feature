﻿#language: ru
@exportscenarios
@tree

Функционал: Заполнение документа Заказ

Как Менеджер по продажам я хочу 
проверить корректность заполнения документа Заказ

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий


@Заполнение шапки Заказа
Сценарий: Проверка заполнения шапки документа

* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       |
		| '000000013' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Средний'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'

	
