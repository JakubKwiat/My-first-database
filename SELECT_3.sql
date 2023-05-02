-- wypisz fundusz, który finansowal najdrozsza konserwacje i ilosc tych pieniedzy
-- ORDER/JOIN/GROUP/SUM
SELECT TOP 1 Finansowanie_pochodzace_z_pieniedzy_z_funduszy.Nazwa_Fundusze, Sum(Finansowanie.Suma_pieniedzy) AS 'Suma pieniedzy', Zabytki.ID_Zabytki AS 'ID Zabytku'
	FROM Finansowanie_pochodzace_z_pieniedzy_z_funduszy
	LEFT JOIN Finansowanie ON Finansowanie_pochodzace_z_pieniedzy_z_funduszy.Id_Finansowanie=Finansowanie.ID_Finansowanie
	LEFT JOIN Konserwacje ON Finansowanie.Id_Konserwacje=Konserwacje.ID_Konserwacje
	LEFT JOIN Zabytki ON Konserwacje.Id_Zabytki=Zabytki.ID_Zabytki
	GROUP BY Finansowanie_pochodzace_z_pieniedzy_z_funduszy.Nazwa_Fundusze,Zabytki.ID_Zabytki
	ORDER BY MAX(Finansowanie.Suma_pieniedzy) DESC;
