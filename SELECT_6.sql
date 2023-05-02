--Wypisz wszystkie odkrycia, ktore pozostaly na terenie zabytku i zostaly dokonanie w 21.wieku i nazwy organizacji ktore sie nimi zajely
--subqueries
Select Zaopiekowanie_sie_odkryciem_przez_Organizacje.ID_Odkrycia, Odkrycia.Co_odkryto, Organizacje.Nazwa_Organizacje
FROM Odkrycia,Organizacje,Zaopiekowanie_sie_odkryciem_przez_Organizacje
	WHERE Zaopiekowanie_sie_odkryciem_przez_Organizacje.ID_Odkrycia=Odkrycia.ID_Odkrycia
	AND Zaopiekowanie_sie_odkryciem_przez_Organizacje.Nazwa_Organizacje=Organizacje.Nazwa_Organizacje
	AND Zaopiekowanie_sie_odkryciem_przez_Organizacje.ID_Odkrycia IN 
	(SELECT Odkrycia.ID_Odkrycia
			From Odkrycia
			WHERE  Odkrycia.Czy_odkrycie_zostalo_na_terenie_zabytku=0 
			AND Odkrycia.Data_odkrycia>'01.01.2000')
	


