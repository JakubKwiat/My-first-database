

CREATE TABLE Zabytki(
ID_Zabytki INT PRIMARY KEY,
Priorytet_konserwacji VARCHAR(50) NOT NULL
CHECK (Priorytet_konserwacji IN ('natychmiastowy','wymaga konserwacji','nie wymaga konserwacji')),
Optymalny_okres_w_roku_na_rozpoczecie_prac VARCHAR(20) NOT NULL
CHECK (Optymalny_okres_w_roku_na_rozpoczecie_prac IN ('wiosna','lato','jesien','zima','styczen','luty','marzec','kwiecien','maj','czerwiec','lipiec','sierpien','wrzesien','pazdziernik','listopad','grudzien','caly rok')),
Funkcja VARCHAR(30) NULL,
Data_ostatniej_konserwacji DATE NULL,
)

CREATE TABLE Konserwacje(
ID_Konserwacje INT PRIMARY KEY,
Zakres_prac VARCHAR(50) NOT NULL,
Data_rozpoczecia DATE NOT NULL,
Planowana_data_ukonczenia DATE NULL,
Id_Zabytki INT REFERENCES Zabytki ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)


CREATE TABLE Konserwatorzy(
Pesel VARCHAR(11) PRIMARY KEY,
CHECK (Pesel LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Imie Varchar(30) NOT NULL,
Nazwisko Varchar(50) NOT NULL,
Obszar_dzialania VARCHAR(40)NOT NULL,
Numer_kontaktowy VARCHAR(9) NULL
CHECK (Numer_kontaktowy LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

CREATE TABLE Firmy_wykonujace_konserwacje(
Regon VARCHAR(14) PRIMARY KEY
CHECK (Regon LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Nazwa VARCHAR(60) NOT NULL,
)

CREATE TABLE Etapy(
ID_Etapy INT PRIMARY KEY,
Numer_etapu INT NULL
CHECK (Numer_etapu>0),
Zakres_prac VARCHAR(80) NOT NULL,
Id_Konserwacje INT REFERENCES Konserwacje ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE Przetargi(
ID_Przetargi INT PRIMARY KEY,
Rodzaj_prac VARCHAR(100) NOT NULL,
Data_przetargu DATE NOT NULL,
Regon VARCHAR(14) REFERENCES Firmy_wykonujace_konserwacje ON UPDATE CASCADE NULL
CHECK (Regon LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Pesel VARCHAR(11) REFERENCES Konserwatorzy ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
CHECK (Pesel LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') ,
ID_Etapy INT REFERENCES Etapy ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)


CREATE TABLE Finansowanie(
ID_Finansowanie INT PRIMARY KEY,
Suma_pieniedzy FLOAT NOT NULL,
Id_Konserwacje INT REFERENCES Konserwacje ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE Fundusze(
Nazwa_Fundusze VARCHAR(60) PRIMARY KEY
)

CREATE TABLE Organizacje(
Nazwa_Organizacje VARCHAR(60) PRIMARY KEY,
)

CREATE TABLE Opoznienia(
ID_Opoznienia INT PRIMARY KEY,
Nowa_planowana_data_ukonczenia DATE NULL,
Powod_opoznienia VARCHAR(150) NOT NULL,
Id_Konserwacje INT REFERENCES Konserwacje ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE Odkrycia(
ID_Odkrycia INT PRIMARY KEY,
Co_odkryto VARCHAR(150) NOT NULL,
Data_odkrycia DATE NOT NULL,
Data_rozpoczecia_prac_przy_odkryciu DATE NULL,
Czy_odkrycie_zostalo_na_terenie_zabytku BIT NOT NULL,
Id_Opoznienia INT REFERENCES Opoznienia ON UPDATE CASCADE NULL,
Id_Konserwacje INT REFERENCES Konserwacje ON DELETE CASCADE NOT NULL
)

CREATE TABLE Jurysdykcja(
ID_Zabytki INT REFERENCES Zabytki ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Pesel Varchar(11) REFERENCES Konserwatorzy ON UPDATE CASCADE ON DELETE CASCADE NULL
)

CREATE TABLE Zaopiekowanie_sie_odkryciem_przez_Organizacje(
ID_Odkrycia INT REFERENCES Odkrycia ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Nazwa_Organizacje VARCHAR(60) REFERENCES Organizacje ON UPDATE CASCADE  NULL,
)

CREATE TABLE Finansowanie_pochodzace_z_pieniedzy_z_funduszy(
Id_Finansowanie INT REFERENCES Finansowanie ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Nazwa_Fundusze VARCHAR(60) REFERENCES Fundusze ON UPDATE CASCADE NOT NULL
)

