#language: ru

@tree
@Отчеты

Функционал: тестирования отчета Продажи

Как тестировщик я хочу
протестировать отчет 
чтобы проверить что у пользователя нет проблем   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Тестирование возвратов из отчета продажи

* Загрузка данных
	//Когда экспорт основных данных
	//Когда экспорт документов продаж 
	//И я выполняю код встроенного языка на сервере
	//		|'Documents.RetailReturnReceipt.НайтиПоНомеру(1).GetObject().Write(DocumentWriteMode.Posting);'|
	//		|'Documents.SalesReturn.НайтиПоНомеру(1).GetObject().Write(DocumentWriteMode.Posting);'|
	//		|'Documents.RetailSalesReceipt.НайтиПоНомеру(1).GetObject().Write(DocumentWriteMode.Posting);'|
	//		|'Documents.RetailSalesReceipt.НайтиПоНомеру(2).GetObject().Write(DocumentWriteMode.Posting);'|
	//		|'Documents.SalesInvoice.НайтиПоНомеру(1).GetObject().Write(DocumentWriteMode.Posting);'|
	//		|'Documents.SalesInvoice.НайтиПоНомеру(2).GetObject().Write(DocumentWriteMode.Posting);'|
		
* Открытие отчета и настройка варианта отчета
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	И я перехожу к закладке с именем 'FilterPage'
	И в таблице 'SettingsComposerSettingsFilterFilterAvailableFields' я перехожу к строке:
		| "Доступные поля" |
		| "Количество"     |
	И в таблице 'SettingsComposerSettingsFilterFilterAvailableFields' я выбираю текущую строку
	И в таблице 'SettingsComposerSettingsFilter' я активизирую поле с именем 'SettingsComposerSettingsFilterComparisonType'
	И в таблице 'SettingsComposerSettingsFilter' я выбираю текущую строку
	И в таблице 'SettingsComposerSettingsFilter' из выпадающего списка с именем 'SettingsComposerSettingsFilterComparisonType' я выбираю точное значение "Меньше"
	И в таблице 'SettingsComposerSettingsFilter' я активизирую поле с именем 'SettingsComposerSettingsFilterRightValue'
	И в таблице 'SettingsComposerSettingsFilter' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R5C1" в течение 20 секунд
	Дано Табличный документ "Result" равен макету "ОтчетПродажиВозвраты" по шаблону