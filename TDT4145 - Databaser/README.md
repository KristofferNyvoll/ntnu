# TDT4145 - Datamodellering og databasesystemer

Grunnleggende innføring i datamodellering, med vekt på ER-modeller.  Relasjonsmodellen, relasjonsalgebra og SQL. Databasekonstruksjon.  Normalisering som designteori for relasjonsdatabaser. Andre databasemodeller. Lagringsteknologier, filorganisering og  aksess-strukturer. Queryutføring. Databasehåndteringssystemer.  Transaksjonsbegreper, samtidig utførelse og sikkerhet mot tap av data.  Dataintegritet.



**Eksamen 11.05.2020 09:00-13:00. Digital eksamen (Inspera)**



[TOC]



## Læringsutbytte

Kunnskaper: 

1. Databasesystemer: generelle egenskaper og systemstruktur.
2. Datamodellering med vekt på entity-relationship-modeller. 
3. Relasjonsdatabasemodellen for databasesystemer, databaseskjema og dataintegritet.
4. Spørrespråk: Relasjonsalgebra og SQL.
5. Designteori for relasjonsdatabaser.
6. Systemdesign og programmering mot databasesystemer.
7. Datalagring, filorganisering og indeksstrukturer.
8. Utføring av databasespørringer.
9. Transaksjoner, samtidighet og robusthet mot feil.

Ferdigheter:

1. Datamodellering med entity-relationship-modellen.
2. Realisering av relasjonsdatabaser.
3. Databaseorientert programmering: SQL, relasjonsalgebra og database-programmering i Java.
4. Vurdering og forbedring av relasjonsdatabaseskjema med utgangspunkt i normaliseringsteori.
5. Analyse og optimalisering av ytelsen til databasesystemer.

Generell kompetanse:

1. Kjennskap til anvendelser av databasesystemer og forståelse for nytte og begrensninger ved slike systemer.
2. Modellering av og analytisk tilnærming til datatekniske problemer.





## Forelesninger

### F01: Intro



## Wikipendium

Notater fra [wikipendium](https://www.wikipendium.no/TDT4145_Data_Modelling_and_Database_Systems)



### Intro: Uttrykk og begreper

**Database**: en samling av data

**Data**: fakta som kan måles og som har en implisitt betydning

**Miniworld/ Universe of Discourse (UoD)**: En database representerer en del av den virkelige verden, eller en såkalt miniverden. Endringer IRL reflekteres i databasen.

**Databasemodell**: En type datamodell som bestemmer den logiske strukturen til en database. F.eks. ER-modell

**Database mangement system (DBMS)**: En samling av programmer som tillater brukere å opprette og vedlikeholde en database.

**Databasesystem**: Viser samlet til databasen, databasemodellen og DBMS. 



### Entity Relationship model

En enhetsforholdsmodell er en datamodell som beskriver strukturen av dataen som skal implementeres i en database. En ER-modell beskrives vanligvis i et ER-diagram. ER-modellen består hovedsakelig av enheter som representerer objekter/ting, og forholdsklasser som representerer forholdet mellom to enheter. Enhetene identifiseres med navn og egenskaper. 

![img_ER](http://i.imgur.com/P8ZPGlo.png)

Og denne: 

![ER_img2](http://i.imgur.com/9EdcKUN.png)

### Relational algebra

Brukes til å beskrive hvordan data kan organiseres i sett. Dette er det moderne spørrespråk (query alnguages) bygger på. En påstand i *relational algebra* kan gis som tekst eller et tre. Enhver projeksjon (𝜋) vil resultere i et distinkt sett. Ingen operator for *distinct queries* i *relational algebra*. 



### Database normalization

Prosessen for å minimere overflødighet og avhengigheter i tabeller og felter i en *relational database* kalles  **database normalization**. 



#### Normal forms (NF)

Et sett med kriterier for å bestemme hvor sårbar en tabell er til logiske ujevnheter og anomalier. Det vanligste er: 

| 1NF  | En tabell representerer en relasjon og har ingen gjentakende grupper. Alle egenskaper er atomiske |
| ---- | ------------------------------------------------------------ |
| 2NF  | Ingen *non-prime* egenskap i tabellen er delvis avhengig av en kandidatnøkkel |
| 3NF  | Enhver *non-prime* egenskap i tabellen er direkte avhengig av enhver kandidatnøkkel |
| BCNF | Enhver ikke-triviell funksjonell avhengighet er en avhengighet på en supernøkkel (superkey) |
| 4NF  | For alle ikke-trivielle flerverdi avhengighet (MVD) X ->> Y, så er X en supernøkkel |



#### Functional dependencies

En funksjonell avhengighet, skrevet slik: A -> B, på en relasjon (tabell) hvor A og B er sett med egenskaper (kolonner) i relasjonen, medfører at dersom to *tuples* har samme verdi i A, så må de ha samme verdi i B. 

![image-20200106133843517](/home/kristoffer/.config/Typora/typora-user-images/image-20200106133843517.png)

Dersom mer enn en engenskap er tilstede på begge sidene av pilen, bør de *and'es* sammen. 



![image-20200106134219239](/home/kristoffer/.config/Typora/typora-user-images/image-20200106134219239.png)





## Annet

Du kan finne opptak av forelesninger fra våren 2019 [her](https://mediasite.ntnu.no/Mediasite/Catalog/catalogs/tdt4145_v19)

