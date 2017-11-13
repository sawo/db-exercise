CREATE TABLE dolgozo(
  id INT(4) Primary key,
  name Varchar(20) Not Null,
  city Varchar(20),
  post Varchar(20),
  date_of_entry Date,
  payment Number(7),
  class Varchar(15)
);

DESC dolgozo;

Begin
INSERT INTO dolgozo VALUES (1016, 'Kis Elek', 'Eger', 'Programozo', '09.01.2010', 290, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1026, 'Kis Jeno', 'Eger', 'Tesztelo', '01.01.2005', 270, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1028, 'Kis Geza', 'Miskolc', 'Programozo', '03.15.2011', 250, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1039, 'Ko Beno', 'Budapest', 'Elnok', '01.01.2005', 650, 'Iranyitas');
INSERT INTO dolgozo VALUES (1099, 'Mezei Virag', 'Eger', 'Tesztelo', '03.01.2006', 280, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1100, 'Fagor Magor', 'Miskolc', 'Tesztelo', '03.30.2010', 320, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1113, 'Meresz Terez', 'Budapest', 'Elemzo', '08.05.2009', 250, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1214, 'Sztar Pal', 'Budapest', 'Elado', '11.01.2012', 270, 'Terjesztes');
INSERT INTO dolgozo VALUES (1118, 'Megfel Elek', 'Budapest', 'Tervezo', '03.13.2013', 350, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1125, 'Lora Dora', 'Miskolc', 'Programozo', '08.21.2013', 340, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1133, 'Jo Edit', 'Miskolc', 'Titkarno', '10.10.2015', 220, 'Iranyitas');
INSERT INTO dolgozo VALUES (1140, 'Guba Huba', 'Miskolc', 'Konyvelo', '05.19.2010', 430, 'Iranyitas');
INSERT INTO dolgozo VALUES (1142, 'Kis Bela', 'Miskolc', 'Programozo', '06.01.2007', 290, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1147, 'Meg Gyozo', 'Miskolc', 'Elado', '02.20.2014', 300, 'Terjesztes');
INSERT INTO dolgozo VALUES (1151, 'Sport Mercedesz', 'Miskolc', 'Tervezo', '03.13.2013', 350, 'Fejlesztes');
INSERT INTO dolgozo VALUES (1166, 'Bor Virag', 'Eger', 'Elado', '05.07.2016', 220, 'Terjesztes');
INSERT INTO dolgozo VALUES (1169, 'Brumi Barna', null, 'Programozo', Default, 250, 'Fejlesztes');
INSERT INTO dolgozo (id, name, date_of_entry) VALUES (1173, 'Hibás Ilona', Default);
End;

1. Vigye fel mindenki saját magát, tetszoleges adatokkal!
	INSERT INTO dolgozo VALUES (1111, 'Korosi Zsombor', 'Nagyszalonta', 'Programozo', '11.02.2017', 200, 'Fejlesztes');



2. Hibás Ilona miskolci elemzo. Vigyük fel az új adatokat.
	INSERT INTO dolgozo (name, city, post) VALUES ('Hibas Ilona', 'Miskolc', 'Elemzo');


3. Hibás Ilona a fejlesztésre került, 300 fizetéssel. Vigyük fel az új adatokat.
	UPDATE dolgozo SET class = 'Fejlesztes', payment = 300 WHERE name = 'Hibas Ilona';



4. Írassuk ki a miskolci emberek nevét.
	SELECT name FROM dolgozo WHERE city='Miskolc';



5. Írassuk ki a nem miskolci emberek nevét, városát.
	SELECT name, city FROM dolgozo WHERE city != 'Miskolc';


6. Írassuk ki a fejlesztés osztályon dolgozók nevét, ABC sorrendben.
	SELECT name FROM dolgozo WHERE class = 'Fejlesztes' ORDER BY name;



7. Írassuk ki a neveket, fizetéseket, fizetés szerinti csökkeno sorrendben.
	SELECT name, payment FROM dolgozo ORDER BY payment DESC;



8. Írassuk ki az M betuvel kezdodo neveket!
	SELECT name FROM dolgozo WHERE name LIKE 'M%';



9. Írassuk ki az A és a Z beture végzodo neveket!
	SELECT name FROM dolgozo WHERE (name LIKE '%A') OR (name LIKE '%Z');



10. Írassuk ki azok kódját, nevét, akiknek a kódjában van 4-es számjegy.
	SELECT id, name FROM dolgozo WHERE id LIKE '%4%';



11. Írassuk ki azok kódját, nevét, akiknek a kódjában van 1-es, 2-es, és 4-es számjegy is.
	SELECT id, name FROM dolgozo WHERE (id LIKE '%1%') AND (id LIKE '%2%') AND (id LIKE '%4%');



12. Írassuk ki azok kódját, nevét, akiknek a vezetékneve 4 betus!
	SELECT id, name FROM dolgozo WHERE name LIKE '____ %';



13. Írassuk ki az 1030 és 1130 közötti kódúak nevét, kódját.
	SELECT id, name FROM dolgozo WHERE id BETWEEN 1030 AND 1130;



14. Kinek nincs megadva a városa?
	SELECT name FROM dolgozo WHERE city IS NULL;



15. Írassuk ki a rendszerdátumot.
	SELECT NOW();



16. Írassuk ki azok nevét, belépési dátumát, akik 2013-ban léptek be.
	SELECT name, date_of_entry FROM dolgozo WHERE extract(YEAR from date_of_entry) = 2013;



17. Írassuk ki azok nevét, belépési dátumát, akik márciusban léptek be.
	SELECT name, date_of_entry FROM dolgozo WHERE extract(MONTH from date_of_entry) = 3;



18. Írassuk ki a 2010.01.01 és 2013.12.31 között belépett dolgozók nevét, belépési dátumát.
	SELECT name, date_of_entry FROM dolgozo WHERE date_of_entry BETWEEN '2010.01.01' AND '2013.12.31';



19. Ki, hány éve dolgozik a cégnél?
	SELECT id, name, date_of_entry, YEAR(CURRENT_TIMESTAMP)-YEAR(date_of_entry) AS ido
		
FROM dolgozo 
			WHERE YEAR(CURRENT_TIMESTAMP)-YEAR(date_of_entry) != YEAR(CURRENT_TIMESTAMP);


20. Milyen osztályok vannak?
	SELECT class FROM dolgozo GROUP BY class;



21. Írassuk ki a fejlesztésen dolgozó miskolciak nevét.
	SELECT name FROM dolgozo WHERE class = 'Fejlesztes' AND city = 'Miskolc';



22. Írassuk ki a fejlesztésen és a terjesztésen dolgozó nem miskolciak nevét.
	SELECT name FROM dolgozo WHERE ((class = 'Fejlesztes') OR (class = 'Terjesztes')) AND (city != 'Miskolc');



23. Írassuk ki azon osztályok nevét, ahol dolgozik budapesti! 
	SELECT class FROM dolgozo WHERE city = 'Budapest' GROUP BY class;



24. Hány rekord van a táblában?
	SELECT COUNT(*) FROM dolgozo;


25. Írassuk ki az átlagfizetést.
	SELECT AVG(payment) AS atlagfizetes FROM dolgozo;



26. Írassuk ki az átlagfizetéstol többet keresok nevét, fizetését.
	SELECT name, payment FROM dolgozo WHERE payment > (SELECT AVG(payment) FROM dolgozo);



27. Írassuk ki az osztályonkénti átlagfizetést.
	SELECT class, AVG(payment) FROM dolgozo GROUP by class;



28. Melyik programozónak a legmagasabb a fizetése? 
	SELECT name FROM dolgozo WHERE post = 'Programozo' ORDER BY payment DESC LIMIT 1;



28b. Melyik programozónak a legalacsonyabb a fizetése? 
	SELECT name FROM dolgozo WHERE post = 'Programozo' ORDER BY payment LIMIT 1;



29. Írassuk ki az átlagos programozói fizetéstol többet kereso programozók nevét, fizetését. 
	SELECT name, payment FROM dolgozo WHERE (post = 'Programozo') AND (payment > (SELECT AVG(payment) FROM dolgozo WHERE post = 'Programozo' GROUP BY post));



30. Melyik tesztelo keres többet, mint a legtöbbet kereso eladó? 
	SELECT name,payment FROM dolgozo WHERE (SELECT payment FROM dolgozo WHERE post = 'Tesztelo') > (SELECT MAX(payment) FROM dolgozo WHERE post = 'Elado');



31. Hányan dolgoznak az egyes osztályokon?
	SELECT COUNT(class), class FROM dolgozo GROUP BY class;



32. Az egyes városokban hány programozó van?
	SELECT COUNT(name)AS 'programozok szama', city FROM dolgozo WHERE post = 'Programozo' GROUP BY city;



33. Írassuk ki azok nevét, akik abban a városban laknak, ahol a legtöbben laknak.
	SELECT name FROM dolgozo WHERE city = (SELECT city FROM dolgozo GROUP BY city ORDER by COUNT(city) DESC LIMIT 1);


 
34. Mennyit keresnek összesen a tervezok és az elemzok?
	SELECT ((SELECT SUM(payment) FROM dolgozo WHERE post = 'Tervezo')+(SELECT SUM(payment) FROM dolgozo WHERE post = 'Elemzo')) AS 'tervezo+elemzo fizetes osszesen' FROM dolgozo LIMIT 1;



35. Mely osztályok azok, ahol összesen legalább 1000 BitCoin-t keresnek?
	SELECT class FROM dolgozo GROUP BY class HAVING SUM(payment) > 1000;



36. Mely osztályokon dolgoznak legalább hárman?
	SELECT class FROM dolgozo GROUP BY class HAVING COUNT(class) >= 3;



37. Írassuk ki a miskolci eladók és az egri tesztelok nevét.
	SELECT name FROM dolgozo WHERE ((city = 'Miskolc')AND(post = 'Elado'))OR((city = 'Eger')AND(post = 'Tesztelo'));



38. Írassuk ki a miskolci nem programozók nevét.
	SELECT name FROM dolgozo WHERE (city = 'Miskolc')AND(post != 'Programozo');



39. Írassuk ki azon osztályok nevét, ahol minden ember fizetése kevesebb 320 BitCoin-nál!
	SELECT class FROM dolgozo GROUP BY class HAVING MAX(payment) < 320;



40. Hány darab különbözo város van?
	SELECT COUNT(DISTINCT city) FROM dolgozo;


41. Az egyes beosztásokban dolgozók hány darab különbözo városban laknak?
	SELECT post,COUNT(city) FROM dolgozo GROUP BY post;



	42. Írassuk ki azon beosztások nevét, melyeknek minden városban van képviseloje!
	SELECT post FROM dolgozo GROUP BY post,city HAVING COUNT(city) = (SELECT COUNT(DISTINCT city) FROM dolgozo);




43. Készítsünk egy új táblát (legyen a neve D2), melybe a miskolci dolgozók adatai kerülnek.
	CREATE TABLE D2 (

		id INT(4) Primary key,
		name Varchar(20) Not Null,
		city Varchar(20),
		post Varchar(20),
		date_of_entry Date,
		payment INT(7),
		class Varchar(15)
  
		);
	
INSERT INTO D2 SELECT * FROM dolgozo WHERE city = 'Miskolc';


44. Töröljük ki a D2 táblából azokat, akik nem a fejlesztésen dolgoznak.
	DELETE FROM D2 WHERE class = 'Fejlesztes';



45. Töröljük ki az összes rekordot a D2 táblából.
	DELETE FROM D2;



46. Töröljük a D2 táblát.
	DROP TABLE D2;

















