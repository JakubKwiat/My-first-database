INSERT INTO Zabytki
VALUES (23,'wymaga konserwacji','caly rok','muzeum','2001-03-22')
INSERT INTO Zabytki
VALUES (32,'natychmiastowy','caly rok','chodnik','1999-08-21')
INSERT INTO Zabytki
VALUES (45,'wymaga konserwacji','wiosna','pomnik','2003-10-15')
INSERT INTO Zabytki
VALUES (67,'wymaga konserwacji','lato','fort','2005-02-13')
INSERT INTO Zabytki
VALUES (123,'nie wymaga konserwacji','styczen',NULL,'2004-03-13')
INSERT INTO Zabytki
VALUES (58,'natychmiastowy','listopad','kosciol',NULL)
INSERT INTO Zabytki
VALUES (69,'wymaga konserwacji','lato','kamienica','2012-07-22')
INSERT INTO Zabytki
VALUES (70,'natychmiastowy','listopad','kosciol','2000-04-01')
INSERT INTO Zabytki
VALUES (80,'wymaga konserwacji','styczen','kosciol','1998-03-03')
INSERT INTO Zabytki
VALUES (342,'natychmiastowy','caly rok','œredniowieczny mur obronny','1995-11-08')
INSERT INTO Zabytki
VALUES (321,'wymaga konserwacji','jesien','zegar',NULL)
INSERT INTO Zabytki
VALUES (675,'nie wymaga konserwacji','wiosna','pomnik','2002-08-31')
INSERT INTO Zabytki
VALUES (7043,'nie wymaga konserwacji','caly rok','chodnik','2005-03-02')
INSERT INTO Zabytki
VALUES (9284,'nie wymaga konserwacji','styczen','kosciol','1995-01-16')
INSERT INTO Zabytki
VALUES (2578,'nie wymaga konserwacji','caly rok',NULL,'2001-08-02')
INSERT INTO Zabytki
VALUES (4323,'wymaga konserwacji','marzec',NULL,NULL)

INSERT INTO Konserwatorzy
VALUES ('02314546772','Szymon','Kowalski','Miasto Toruñ','134567894')
INSERT INTO Konserwatorzy
VALUES ('54654320324','Marian','Peszko','Pomorskie','564342655')
INSERT INTO Konserwatorzy
VALUES ('65434534523','Jakub','Kwiatkowski','Kujawsko-pomorskie',NULL)
INSERT INTO Konserwatorzy
VALUES ('65432546549','Bogus³aw','Leœnodorski','Miasto Gdañsk','656543345')
INSERT INTO Konserwatorzy
VALUES ('98998945385','Zbigniew','Wodecki','Miasto Zakopane','543543324')
INSERT INTO Konserwatorzy
VALUES ('54365768541','Jacenty','Andruszkiewicz','Ma³opolskie','176234564')
INSERT INTO Konserwatorzy
VALUES ('46424354563','Mateusz','Przybylski','Miasto Bydgoszcz',NULL)
INSERT INTO Konserwatorzy
VALUES ('56443342300','Piotr','Szymañski','Lubuskie','654234798')
INSERT INTO Konserwatorzy
VALUES ('12354976590','Krystian','Mazurek','Miasto Kraków','657123098')
INSERT INTO Konserwatorzy
VALUES ('05405603247','Karol','Kruszczyñski','Podkarpackie','666333000')

INSERT INTO Jurysdykcja
VALUES(23,'02314546772')
INSERT INTO Jurysdykcja
VALUES(23,'54654320324')
INSERT INTO Jurysdykcja
VALUES(32,'02314546772')
INSERT INTO Jurysdykcja
VALUES(45,'02314546772')
INSERT INTO Jurysdykcja
VALUES(67,'54654320324')
INSERT INTO Jurysdykcja
VALUES(123,'65434534523')
INSERT INTO Jurysdykcja
VALUES(58,'65434534523')
INSERT INTO Jurysdykcja
VALUES(69,'65432546549')
INSERT INTO Jurysdykcja
VALUES(70,'98998945385')
INSERT INTO Jurysdykcja
VALUES(80,'54365768541')
INSERT INTO Jurysdykcja
VALUES(342,'46424354563')
INSERT INTO Jurysdykcja
VALUES(321,'56443342300')
INSERT INTO Jurysdykcja
VALUES(675,'12354976590')
INSERT INTO Jurysdykcja
VALUES(7043,'05405603247')
INSERT INTO Jurysdykcja
VALUES(9284,'12354976590')
INSERT INTO Jurysdykcja
VALUES(2578,'46424354563')

INSERT INTO Konserwacje
VALUES (10,'renowacja muzeum','2007-03-31','2007-09-26',23)
INSERT INTO Konserwacje
VALUES (20,'odrestaurowywanie chodnika','2008-07-24',NULL,32)
INSERT INTO Konserwacje
VALUES (33,'odnowienie pomnika','2000-04-12','2000-10-28',45)
INSERT INTO Konserwacje
VALUES (44,'odnowienie wnetrza fortu','2013-07-13','2013-09-23',67)
INSERT INTO Konserwacje
VALUES (77,'renowacja organów koscielnych','2011-11-07','2011-11-30',58)
INSERT INTO Konserwacje
VALUES (100,'renowacja klatki schodowej w kamienicy','2019-07-04','2019-08-04',69)
INSERT INTO Konserwacje
VALUES (55,'restauracja fresku','2010-11-05','2011-02-25',70)
INSERT INTO Konserwacje
VALUES (66,'odrestaurowywanie oltarzu w kosciele','2012-01-08','2012-03-13',80)
INSERT INTO Konserwacje
VALUES (88,'renowacja muru','2015-06-12',NULL,342)
INSERT INTO Konserwacje
VALUES (3456,'odnowienie zegaru w ratusze','2020-07-06','2020-07-27',321)

INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('04305678912348','Pod³ogi sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('05464345564566','Opieka nad eksponatami sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('18654565465754','Chodniki sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('54354385743887','Pomniki sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('87686786787688','Organiœci sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('12312312324234','Porêcze sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('01230213021032','Remonty sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('06546456546666','Odnowa freskow sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('11111111111111','Renowacje oltarzy sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('66666666666666','Dachy sp.z.o.o')
INSERT INTO Firmy_wykonujace_konserwacje
VALUES ('60000000000000','Zegarmistrzowie sp.z.o.o')

INSERT INTO Etapy
VALUES (2430,2,'Wymiana pod³ogi muzealnej',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=23))
INSERT INTO Etapy
VALUES (2410,1,'Kompleksowa opieka nad eksponatami muzealnymi',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=23))
INSERT INTO Etapy
VALUES (1234,NULL,'renowacja chodnika',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=32))
INSERT INTO Etapy
VALUES (34509,1,'Umycie pomnika i pokrycie go warstw¹ ochronn¹',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=45))
INSERT INTO Etapy
VALUES (5555,1,'Generalne czyszczenie fortu i malowanie scian',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=67))
INSERT INTO Etapy
VALUES (4566,1,'Renowacja organów koœcielnych',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=58))
INSERT INTO Etapy
VALUES (6765,1,'renowacja porêczy na klatce schodowej',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=69))
INSERT INTO Etapy
VALUES (756,2,'renowacja œcian i pod³óg klatki schodowej',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=69))
INSERT INTO Etapy
VALUES (12,1,'przygotowanie czêsci budynku do restauracji fresku i restauracja fresku',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=70))
INSERT INTO Etapy
VALUES (309,NULL,'Demontaz i restauracja oltarza',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=80))
INSERT INTO Etapy
VALUES (675,1,'mycie muru',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=342))
INSERT INTO Etapy
VALUES (775,2,'renowacja kostek na górnej czêœci muru',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=342))
INSERT INTO Etapy
VALUES (875,1,'Renowacja wskazówek zegara ratuszowego',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=321))
INSERT INTO Etapy
VALUES (975,2,'Nakrêcenie zegara ratuszowego',(SELECT ID_Konserwacje FROM Konserwacje WHERE Id_Zabytki=321))


INSERT INTO Przetargi
VALUES (1234,'Demonta¿ starej pod³ogi w muzem','2007-06-25','04305678912348','02314546772',2430)
INSERT INTO Przetargi
VALUES (6890,'K³adzenie nowej pod³ogi w muzeum','2007-07-28','04305678912348','02314546772',2430)
INSERT INTO Przetargi
VALUES (12,'Zabezpieczenie eksponatów muzealnych','2007-06-02','05464345564566','02314546772',2410)
INSERT INTO Przetargi
VALUES (3453,'Opieka nad muzealnymi eksponatami na czas remontu','2007-06-13','05464345564566','02314546772',2410)
INSERT INTO Przetargi
VALUES (4356,'Demonta¿ i renowacja zniszczonych czêœci chodnika','2008-07-23','18654565465754','02314546772',1234)
INSERT INTO Przetargi
VALUES (3543,'U³o¿enie chodnika i oczyszczenie go','2008-08-03','18654565465754','02314546772',1234)
INSERT INTO Przetargi
VALUES (654,'Umycie pomnika i pokrycie go warstw¹ ochronn¹','2009-04-08','54354385743887','02314546772',34509)
INSERT INTO Przetargi
VALUES (6567,'Generalne czyszczenie fortu','2013-07-08','01230213021032','54654320324',5555)
INSERT INTO Przetargi
VALUES (65454,'Malowanie scian fortu','2013-08-09','01230213021032','54654320324',5555)
INSERT INTO Przetargi
VALUES (7777,'Renowacja organów koœcielnych','2011-11-03','87686786787688','65434534523',4566)
INSERT INTO Przetargi
VALUES (8888,'Demonta¿ porêczy, ich renowacja oraz monta¿','2019-07-01','12312312324234','65432546549',6765)
INSERT INTO Przetargi
VALUES (9999,'Malowanie œcian klatki schodowej oraz renowacja drewnianej pod³ogi','2019-07-10','01230213021032','65432546549',756)
INSERT INTO Przetargi
VALUES (1000,'Przygotowanie i zabezpieczenie czesci budynku do restauracji fresku','2010-11-01','06546456546666','98998945385',12)
INSERT INTO Przetargi
VALUES (100012,'restauracja fresku','2010-11-10','06546456546666','98998945385',12)
INSERT INTO Przetargi
VALUES (222222,'demontaz zniszczonych czesci oltarza, renowacja ich i montaz cale oltarza','2012-01-05','11111111111111','54365768541',309)
INSERT INTO Przetargi
VALUES (543534333,'ustawienie rusztowañ i umycie muru','2015-05-26','11111111111111','54365768541',675)
INSERT INTO Przetargi
VALUES (765756777,'demonta¿, renowacja i powrotny monta¿ kostek dachowych z górnej czêœci muru','2015-06-01','66666666666666','54365768541',775)
INSERT INTO Przetargi
VALUES (321321333,'demonta¿ zegara ratuszowego i renowacja jego wskazówek','2020-07-03','60000000000000','56443342300',875)
INSERT INTO Przetargi
VALUES (654233333,'Monta¿ zegara ratuszowego i jego nakrêcenie','2020-07-07','60000000000000','56443342300',975)







INSERT INTO Opoznienia
VALUES (100,'2007-10-13','Braki w dostawach pr¹du',10)
INSERT INTO Opoznienia
VALUES (200,'2008-07-30','Warunki pogodowe',20)
INSERT INTO Opoznienia
VALUES (250,'2000-11-19','Warunki pogodowe',33)
INSERT INTO Opoznienia
VALUES (300,'2013-10-25','Odkrycie',44)        
INSERT INTO Opoznienia
VALUES (650,'2013-11-09','Odkrycie',44)       
INSERT INTO Opoznienia
VALUES (350,'2011-12-13','Odkrycie',77)        
INSERT INTO Opoznienia
VALUES (7350,'2012-01-20','Odkrycie',77)        
INSERT INTO Opoznienia
VALUES (400,NULL,'Odkrycie',100)             
INSERT INTO Opoznienia
VALUES (450,'2012-04-01','Odkrycie',55)       
INSERT INTO Opoznienia
VALUES (500,'2001-02-28','Po¿ar',66)
INSERT INTO Opoznienia
VALUES (850,'2012-04-08','Odkrycie',66)       
INSERT INTO Opoznienia
VALUES (550,NULL,'Kwarantanna pracowników',88)
INSERT INTO Opoznienia
VALUES (1550,'2015-07-28','Odkrycia',88)  
INSERT INTO Opoznienia
VALUES (600,'2020-08-28','OpóŸniona dostawa materia³ów',3456)
INSERT INTO Opoznienia
VALUES (12000,'2020-09-13','Odkrycie',3456)

INSERT INTO Odkrycia
VALUES (200,'Miny bojowe','2013-09-01','2013-09-01',0,300,44) 
INSERT INTO Odkrycia
VALUES (2000,'Skrytka Armii Krajowej','2013-10-02','2013-10-02',0,650,44) 
INSERT INTO Odkrycia
VALUES (500,'Rzeczy do odprawiania mszy z okresu baroku','2011-11-15','2011-11-17',1,350,77) 
INSERT INTO Odkrycia
VALUES (670,'Œredniowieczne napisy na pod³odze koœcio³a pod organami','2011-12-03','2011-12-05',1,7350,77) 
INSERT INTO Odkrycia
VALUES (7777,'Niewybuchy z okresu II wojny œwiatowej','2019-07-08','2019-07-08',0,400,100) 
INSERT INTO Odkrycia
VALUES (1000,'Szcz¹tki w piwnicach koœcio³a','2011-11-30','2011-12-01',0,450,55)  
INSERT INTO Odkrycia
VALUES (1200,'Dzienniki pisane podczas Powstania warszawskiego','2012-02-05','2012-02-07',0,850,66)  
INSERT INTO Odkrycia
VALUES (1250,'Freski na œcianach muru','2015-05-07','2015-05-08',1,1550,88)  
INSERT INTO Odkrycia
VALUES (1300,'Sredniowieczne narzêdzia murarskie','2015-05-07','2015-05-08',1,1550,88)  
INSERT INTO Odkrycia
VALUES (1600,'Pozosta³oœci po starym zegarze ratuszowym','2020-08-30','2020-08-31',0,12000,3456) 

INSERT INTO Organizacje
VALUES ('Wojskowa jednostka saperska')
INSERT INTO Organizacje
VALUES ('Muzeum II Wojny Œwiatowej')
INSERT INTO Organizacje
VALUES ('Stowarzyszenie archeologów')
INSERT INTO Organizacje
VALUES ('Muzeum Powstania Warszawskiego')
INSERT INTO Organizacje
VALUES ('Europejskie Centrum Solidarnoœci')
INSERT INTO Organizacje
VALUES ('¯ydowski Instytut historyczny')
INSERT INTO Organizacje
VALUES ('Katolicki Uniwersytet Lubelski')
INSERT INTO Organizacje
VALUES ('Europejskie Towarzystwo Teologii katolickiej')
INSERT INTO Organizacje
VALUES ('Muzu³mañski Instytut historyczny')
INSERT INTO Organizacje
VALUES ('Stowarzyszenie ochrony kultury œredniowiecznej')

INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(200,'Wojskowa jednostka saperska')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(2000,'Muzeum II Wojny Œwiatowej')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(500,'Katolicki Uniwersytet Lubelski')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(670,'Stowarzyszenie ochrony kultury œredniowiecznej')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(7777,'Wojskowa jednostka saperska')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(1000,'Stowarzyszenie archeologów')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(1200,'Muzeum Powstania Warszawskiego')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(1250,'Stowarzyszenie ochrony kultury œredniowiecznej')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(1300,'Stowarzyszenie ochrony kultury œredniowiecznej')
INSERT INTO Zaopiekowanie_sie_odkryciem_przez_Organizacje
VALUES(1600,'Stowarzyszenie archeologów')


INSERT INTO Fundusze
VALUES ('Narodowy Fundusz Ochrony Zabytków')
INSERT INTO Fundusze
VALUES ('Europejski Fundusz Ochrony Zabytków')
INSERT INTO Fundusze
VALUES ('Europejski Fundusz Spo³eczny')
INSERT INTO Fundusze
VALUES ('Ministerstwo Kultury i Dziedzictwa Narodowego')
INSERT INTO Fundusze
VALUES ('Pomorski Fundusz Ochrony Zabytków')
INSERT INTO Fundusze
VALUES ('Narodowy Fundusz Kolejowy')
INSERT INTO Fundusze
VALUES ('Fundusz Koœcielny')
INSERT INTO Fundusze
VALUES ('Fundusz Zabytków Œredniowiecznych')
INSERT INTO Fundusze
VALUES ('Narodowy Fundusz Wojskowy')
INSERT INTO Fundusze
VALUES ('Fundusz Wsparcia Kultury')

INSERT INTO Finansowanie
VALUES (85,1000000.45,10)
INSERT INTO Finansowanie
VALUES (765,5435435.00,20)
INSERT INTO Finansowanie
VALUES (453,10430.99,33)
INSERT INTO Finansowanie
VALUES (345,6781.23,44)
INSERT INTO Finansowanie
VALUES (798,60000.00,77)
INSERT INTO Finansowanie
VALUES (800,90012.99,100)
INSERT INTO Finansowanie
VALUES (123,91000000.00,55)
INSERT INTO Finansowanie
VALUES (54333,550004.99,66)
INSERT INTO Finansowanie
VALUES (8900,56943.15,88)
INSERT INTO Finansowanie
VALUES (566,677777.23,3456)

INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(85,'Narodowy Fundusz Ochrony Zabytków')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(765,'Europejski Fundusz Ochrony Zabytków')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(453,'Europejski Fundusz Spo³eczny')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(345,'Narodowy Fundusz Wojskowy')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(798,'Pomorski Fundusz Ochrony Zabytków')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(800,'Narodowy Fundusz Kolejowy')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(123,'Fundusz Koœcielny')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(54333,'Fundusz Zabytków Œredniowiecznych')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(8900,'Ministerstwo Kultury i Dziedzictwa Narodowego')
INSERT INTO Finansowanie_pochodzace_z_pieniedzy_z_funduszy
VALUES(566,'Fundusz Wsparcia Kultury')
