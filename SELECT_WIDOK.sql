-- wypisz id_zabytkow i pesele,imiona,nazwiska,numery kontaktowe wsyzstkich kosnerwatorow ktorzy pelnia nad nimi jurysdykcje
-- JOIN/VIEW
GO
CREATE VIEW konserwatorzy_info AS
SELECT Zabytki.ID_Zabytki as 'Id zabytku',Konserwatorzy.Pesel as 'Pesel',Konserwatorzy.Imie as 'Imie',Konserwatorzy.Nazwisko as 'Nazwisko',Konserwatorzy.Numer_kontaktowy as 'Numer kontaktowy'
FROM Konserwatorzy,Zabytki
LEFT JOIN Jurysdykcja ON Zabytki.ID_Zabytki=Jurysdykcja.ID_Zabytki
WHERE Jurysdykcja.Pesel=Konserwatorzy.Pesel
GROUP BY Zabytki.ID_Zabytki,Konserwatorzy.Pesel,Konserwatorzy.Imie,Konserwatorzy.Nazwisko,Konserwatorzy.Numer_kontaktowy

