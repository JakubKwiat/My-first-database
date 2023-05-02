-- wyswietl wszystkie firmy wygrywajace przetargi wraz z ilosci¹ wygranych przetarhow
-- count/group
SELECT Firmy_wykonujace_konserwacje.Regon AS 'Regon', Firmy_wykonujace_konserwacje.Nazwa as 'Nazwa firmy', Count(Przetargi.Regon) as 'Ilosc wygranych przetargow'
from Firmy_wykonujace_konserwacje,Przetargi
where Firmy_wykonujace_konserwacje.Regon=Przetargi.Regon
group by Firmy_wykonujace_konserwacje.Regon,Firmy_wykonujace_konserwacje.Nazwa