-- wypisz Id konserwacji, ktore rozpoczely sie po 2010 roku i funkcja zabytku jest inna niz kosciol
-- subqueries
SELECT Zabytki.ID_Zabytki AS 'Id zabytku' ,Konserwacje.ID_Konserwacje AS 'Id Konserwacji', Konserwacje.Data_rozpoczecia 'Data rozpoczecia'
	 FROM Konserwacje,zabytki
	 WHERE Konserwacje.Id_Zabytki=Zabytki.ID_Zabytki
	 AND Konserwacje.Id_Zabytki in
	     (SELECT Zabytki.ID_Zabytki
				FROM Zabytki
				WHERE Zabytki.Funkcja != 'kosciol')
	 AND Konserwacje.Data_rozpoczecia>'01.01.2010'
	 





	 