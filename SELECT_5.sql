-- podejrzenie o korpucje firme, ktore wygrala danych przetarg. Pokaz informacje o tym przetargu

SELECT Przetargi.ID_Przetargi AS 'ID Przetargu', Przetargi.Regon, Firmy_wykonujace_konserwacje.Nazwa as 'Nazwa firmy', Przetargi.Data_przetargu as 'data przetargu'
FROM Przetargi,Firmy_wykonujace_konserwacje
WHERE Przetargi.ID_Przetargi=6567 AND Firmy_wykonujace_konserwacje.Regon=Przetargi.Regon