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
INSERT INTO dolgozo (id, name, date_of_entry) VALUES (1173, 'Hib�s Ilona', Default);
End;

1. Vigye fel mindenki saj�t mag�t, tetszoleges adatokkal!
	INSERT INTO dolgozo VALUES (1111, 'Korosi Zsombor', 'Nagyszalonta', 'Programozo', '11.02.2017', 200, 'Fejlesztes');



2. Hib�s Ilona miskolci elemzo. Vigy�k fel az �j adatokat.
	INSERT INTO dolgozo (name, city, post) VALUES ('Hibas Ilona', 'Miskolc', 'Elemzo');


3. Hib�s Ilona a fejleszt�sre ker�lt, 300 fizet�ssel. Vigy�k fel az �j adatokat.
	UPDATE dolgozo SET class = 'Fejlesztes', payment = 300 WHERE name = 'Hibas Ilona';



4. �rassuk ki a miskolci emberek nev�t.
	SELECT name FROM dolgozo WHERE city='Miskolc';



5. �rassuk ki a nem miskolci emberek nev�t, v�ros�t.
	SELECT name, city FROM dolgozo WHERE city != 'Miskolc';


6. �rassuk ki a fejleszt�s oszt�lyon dolgoz�k nev�t, ABC sorrendben.
	SELECT name FROM dolgozo WHERE class = 'Fejlesztes' ORDER BY name;



7. �rassuk ki a neveket, fizet�seket, fizet�s szerinti cs�kkeno sorrendben.
	SELECT name, payment FROM dolgozo ORDER BY payment DESC;



8. �rassuk ki az M betuvel kezdodo neveket!
	SELECT name FROM dolgozo WHERE name LIKE 'M%';



9. �rassuk ki az A �s a Z beture v�gzodo neveket!
	SELECT name FROM dolgozo WHERE (name LIKE '%A') OR (name LIKE '%Z');



10. �rassuk ki azok k�dj�t, nev�t, akiknek a k�dj�ban van 4-es sz�mjegy.
	SELECT id, name FROM dolgozo WHERE id LIKE '%4%';



11. �rassuk ki azok k�dj�t, nev�t, akiknek a k�dj�ban van 1-es, 2-es, �s 4-es sz�mjegy is.
	SELECT id, name FROM dolgozo WHERE (id LIKE '%1%') AND (id LIKE '%2%') AND (id LIKE '%4%');



12. �rassuk ki azok k�dj�t, nev�t, akiknek a vezet�kneve 4 betus!
	SELECT id, name FROM dolgozo WHERE name LIKE '____ %';



13. �rassuk ki az 1030 �s 1130 k�z�tti k�d�ak nev�t, k�dj�t.
	SELECT id, name FROM dolgozo WHERE id BETWEEN 1030 AND 1130;



14. Kinek nincs megadva a v�rosa?
	SELECT name FROM dolgozo WHERE city IS NULL;



15. �rassuk ki a rendszerd�tumot.
	SELECT NOW();



16. �rassuk ki azok nev�t, bel�p�si d�tum�t, akik 2013-ban l�ptek be.
	SELECT name, date_of_entry FROM dolgozo WHERE extract(YEAR from date_of_entry) = 2013;



17. �rassuk ki azok nev�t, bel�p�si d�tum�t, akik m�rciusban l�ptek be.
	SELECT name, date_of_entry FROM dolgozo WHERE extract(MONTH from date_of_entry) = 3;



18. �rassuk ki a 2010.01.01 �s 2013.12.31 k�z�tt bel�pett dolgoz�k nev�t, bel�p�si d�tum�t.
	SELECT name, date_of_entry FROM dolgozo WHERE date_of_entry BETWEEN '2010.01.01' AND '2013.12.31';



19. Ki, h�ny �ve dolgozik a c�gn�l?
	SELECT id, name, date_of_entry, YEAR(CURRENT_TIMESTAMP)-YEAR(date_of_entry) AS ido
		
FROM dolgozo 
			WHERE YEAR(CURRENT_TIMESTAMP)-YEAR(date_of_entry) != YEAR(CURRENT_TIMESTAMP);


20. Milyen oszt�lyok vannak?
	SELECT class FROM dolgozo GROUP BY class;



21. �rassuk ki a fejleszt�sen dolgoz� miskolciak nev�t.
	SELECT name FROM dolgozo WHERE class = 'Fejlesztes' AND city = 'Miskolc';



22. �rassuk ki a fejleszt�sen �s a terjeszt�sen dolgoz� nem miskolciak nev�t.
	SELECT name FROM dolgozo WHERE ((class = 'Fejlesztes') OR (class = 'Terjesztes')) AND (city != 'Miskolc');



23. �rassuk ki azon oszt�lyok nev�t, ahol dolgozik budapesti! 
	SELECT class FROM dolgozo WHERE city = 'Budapest' GROUP BY class;



24. H�ny rekord van a t�bl�ban?
	SELECT COUNT(*) FROM dolgozo;


25. �rassuk ki az �tlagfizet�st.
	SELECT AVG(payment) AS atlagfizetes FROM dolgozo;



26. �rassuk ki az �tlagfizet�stol t�bbet keresok nev�t, fizet�s�t.
	SELECT name, payment FROM dolgozo WHERE payment > (SELECT AVG(payment) FROM dolgozo);



27. �rassuk ki az oszt�lyonk�nti �tlagfizet�st.
	SELECT class, AVG(payment) FROM dolgozo GROUP by class;



28. Melyik programoz�nak a legmagasabb a fizet�se? 
	SELECT name FROM dolgozo WHERE post = 'Programozo' ORDER BY payment DESC LIMIT 1;



28b. Melyik programoz�nak a legalacsonyabb a fizet�se? 
	SELECT name FROM dolgozo WHERE post = 'Programozo' ORDER BY payment LIMIT 1;



29. �rassuk ki az �tlagos programoz�i fizet�stol t�bbet kereso programoz�k nev�t, fizet�s�t. 
	SELECT name, payment FROM dolgozo WHERE (post = 'Programozo') AND (payment > (SELECT AVG(payment) FROM dolgozo WHERE post = 'Programozo' GROUP BY post));



30. Melyik tesztelo keres t�bbet, mint a legt�bbet kereso elad�? 
	SELECT name,payment FROM dolgozo WHERE (SELECT payment FROM dolgozo WHERE post = 'Tesztelo') > (SELECT MAX(payment) FROM dolgozo WHERE post = 'Elado');



31. H�nyan dolgoznak az egyes oszt�lyokon?
	SELECT COUNT(class), class FROM dolgozo GROUP BY class;



32. Az egyes v�rosokban h�ny programoz� van?
	SELECT COUNT(name)AS 'programozok szama', city FROM dolgozo WHERE post = 'Programozo' GROUP BY city;



33. �rassuk ki azok nev�t, akik abban a v�rosban laknak, ahol a legt�bben laknak.
	SELECT name FROM dolgozo WHERE city = (SELECT city FROM dolgozo GROUP BY city ORDER by COUNT(city) DESC LIMIT 1);


 
34. Mennyit keresnek �sszesen a tervezok �s az elemzok?
	SELECT ((SELECT SUM(payment) FROM dolgozo WHERE post = 'Tervezo')+(SELECT SUM(payment) FROM dolgozo WHERE post = 'Elemzo')) AS 'tervezo+elemzo fizetes osszesen' FROM dolgozo LIMIT 1;



35. Mely oszt�lyok azok, ahol �sszesen legal�bb 1000 BitCoin-t keresnek?
	SELECT class FROM dolgozo GROUP BY class HAVING SUM(payment) > 1000;



36. Mely oszt�lyokon dolgoznak legal�bb h�rman?
	SELECT class FROM dolgozo GROUP BY class HAVING COUNT(class) >= 3;



37. �rassuk ki a miskolci elad�k �s az egri tesztelok nev�t.
	SELECT name FROM dolgozo WHERE ((city = 'Miskolc')AND(post = 'Elado'))OR((city = 'Eger')AND(post = 'Tesztelo'));



38. �rassuk ki a miskolci nem programoz�k nev�t.
	SELECT name FROM dolgozo WHERE (city = 'Miskolc')AND(post != 'Programozo');



39. �rassuk ki azon oszt�lyok nev�t, ahol minden ember fizet�se kevesebb 320 BitCoin-n�l!
	SELECT class FROM dolgozo GROUP BY class HAVING MAX(payment) < 320;



40. H�ny darab k�l�nb�zo v�ros van?
	SELECT COUNT(DISTINCT city) FROM dolgozo;


41. Az egyes beoszt�sokban dolgoz�k h�ny darab k�l�nb�zo v�rosban laknak?
	SELECT post,COUNT(city) FROM dolgozo GROUP BY post;



	42. �rassuk ki azon beoszt�sok nev�t, melyeknek minden v�rosban van k�pviseloje!
	SELECT post FROM dolgozo GROUP BY post,city HAVING COUNT(city) = (SELECT COUNT(DISTINCT city) FROM dolgozo);




43. K�sz�ts�nk egy �j t�bl�t (legyen a neve D2), melybe a miskolci dolgoz�k adatai ker�lnek.
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


44. T�r�lj�k ki a D2 t�bl�b�l azokat, akik nem a fejleszt�sen dolgoznak.
	DELETE FROM D2 WHERE class = 'Fejlesztes';



45. T�r�lj�k ki az �sszes rekordot a D2 t�bl�b�l.
	DELETE FROM D2;



46. T�r�lj�k a D2 t�bl�t.
	DROP TABLE D2;

















