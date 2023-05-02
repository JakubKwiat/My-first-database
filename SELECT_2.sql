-- Wskaz zabytki pelniace dana funkcje, i ktorych trwajace konserwacje sa opoznione z powodu innego niz odkrycie
-- JOIN/GROUP
SELECT Zabytki.ID_Zabytki AS 'Id Zabytku' , Zabytki.Funkcja AS 'Funkcja zabytku', Opoznienia.Powod_opoznienia AS 'Powod opoznienia'
       FROM Zabytki,Opoznienia
	   JOIN Konserwacje ON  Opoznienia.Id_Konserwacje=Konserwacje.ID_Konserwacje
	   WHERE Zabytki.funkcja='chodnik' AND 
	   Opoznienia.Powod_opoznienia not in ('odkrycie','odkrycia') AND
	   Zabytki.ID_Zabytki=Konserwacje.Id_Zabytki AND
	   Zabytki.Priorytet_konserwacji='natychmiastowy'
	   GROUP BY Zabytki.ID_Zabytki,Zabytki.Funkcja,Opoznienia.Powod_opoznienia
	   
	   