-- Konserwatorzy posortowani w kolejnosci malejacej wedlug ilosci pieniedzy wydanych na konserwacje pod ich jurysdykcja
-- join/order/group/sum
Select  Konserwatorzy.Pesel AS 'Pesel',Konserwatorzy.Nazwisko as 'Nazwisko',SUM(Finansowanie.Suma_pieniedzy) AS 'Suma wydanych pieniedzy'
		FROM Konserwatorzy
		LEFT JOIN Jurysdykcja ON Konserwatorzy.Pesel=Jurysdykcja.Pesel
		LEFT JOIN Konserwacje ON Jurysdykcja.ID_Zabytki=Konserwacje.Id_Zabytki
		LEFT JOIN Finansowanie ON Konserwacje.ID_Konserwacje =Finansowanie.Id_Konserwacje
		GROUP BY Konserwatorzy.Pesel,Konserwatorzy.Nazwisko
		ORDER BY MAX(Finansowanie.Suma_pieniedzy) DESC;