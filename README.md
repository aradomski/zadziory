# Projekt: "RentLuk"

System wynajmowania mieszkań z możliwością ich oceniania oraz oceniania także najemców i wynajmujących.

## Szczegóły użycia systemu - scenariusze użycia:
Odwiedzający: Wchodzi na stronę RentLuk i widzi formularz wyszukiwania mieszkania oraz 
	listę najnowszych dodanych mieszkań lub najlepszych – aktywnych. Żeby wejść w szczegóły
	mieszkania odwiedzający musi się zalogować lub zarejestrować jeśli nie ma konta. 
	Jeśli ma zamiar tylko szukać mieszkania, to może się zalogować przy pomocy 
	jednego z portali społecznościowych.
=========================
Zarejestrowany użytkownik - najemca: Po zalogowaniu się widzi formularz szukania mieszkania i listę 
	ostatnich/najlepszych mieszkań. Mam dostęp do szczegółów swojego konta. Tam:
	- możliwość zmiany hasła/ nicku itd.
	- podgląd historii transakcji ( tu komentarze ) 
	- aktualna ocena użytkownika
	- przejście do podglądu aktualnie wynajmowanego mieszkania
=========================
Zarejestrowany użytkownik – właściciel: Po zalogowaniu się widzi panel właściciela, na którym 
	może wykonywać pewne operacje:
	- może dodać mieszkanie, które chce dać do wynajęcia
	- może przejść do podglądu historii 
	- może zmienić hasło itd.
	- widzi aktualną ocenę użytkownika
	- może przejść na listę swoich mieszkań
=========================
Moderator: Po zalogowaniu się widzi, panel moderatora, z którego może:
	- przejść na listę mieszkań, gdzie może edytować opis mieszkania
	- przejść do listy historii, gdzie może edytować komentarze
	- może wysyłać maile do złych ludzi ( feature: dawać bany )
=========================
Administrator: Po zalogowaniu się widzi panel admina, gdzie może:
	- jest lista użytkowników (osobno właścicieli i najemców lub jedna 
		lista user-ów z możliwością filtrowania po roli)
	- dokonywać zmian dotyczących swojego konta
	- może dawać bany, usuwać mieszkania, usuwać użytkowników , edytować to co moderator, 
		może dodawać użytkowników , mieszkania.
	- To czego tu nie ma, to może tez
=========================
Ogólne info:
	- wynajmujący uzupełnia dane o mieszkanie ,tzn. metrarz, położenie, ilość okien, przybliżona cena wynajmu, ustalenia minimalnej i maksymalnej zależnej od oceny.
	- najmujący może wyszukiwać mieszkanie po lokacji, cenie, parametrach mieszkania
	- wynajmujacy i najmujący mogą sobie nawzajem wystawiać oceny
	- oceny będą wpływać na upust w cenie wynajmu

## Szczegóły:
- użytkownik może się rejestrować lub logować przy użyciu jednego z kont portali społecznościowych
- wynajmujący uzupełnia dane o mieszkanie ,tzn. metraż, położenie, ilość okien, przybliżona cena wynajmu, ustalenia minimalnej i maksymalnej zależnej od oceny.
- najmujący może wyszukiwać mieszkanie po lokacji, cenie, parametrach mieszkania
- wynajmujacy i najmujący mogą sobie nawzajem wystawiać oceny
- oceny będą wpływać na upust w cenie wynajmu
>>>>>>> 0f4959d509f5dc413ba4a103b2f321f4cd8dbd82

## Technologie:
- JavaScript
- Ruby on Rails
- CSS3
- HTML5
- jQuery
- github.com jako repozytorium danych.

## Zarządzanie projektem.
Logujemy się na www.projekt-zadziory.cba.pl i na uruchomionej tam platformie śledzimy zadania i je
wykonujemy :) 
