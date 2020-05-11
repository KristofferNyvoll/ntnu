## DB Øving 4



#### Oppgave 1

Gitt tabellen R = {A, B, C, D} og F = {A -> D, C -> AB}. Gå ut fra at R oppfyller 1. normalform.



**a)** Er tabellen på 2. normalform? Hvorfor eller hvorfor ikke?

**Svar:** Ja. Hvis vi velger C som vår Composite key (CK), så følger alle de andre verdiene av C. C er heller ikke sammensatt, så det er ingen delvis funksjonell avhengighet. 



**b)** Er tabellen på 3. normalform? Hvorfor eller hvorfor ikke?

**Svar:** Nei. Da skulle i så fall A -> D medføre at A ikke er en supernøkkel  OG D ikke er en nøkkelattributt i R. 



**c)** Er tabellen på Boyce-Codd normalform (BCNF)? Hvorfor eller hvorfor ikke?

**Svar:** Nei. Litt samme begunnelse som over. A -Z D, der A ikke er en supernøkkel



**d)** Forklar hvilke kriterier vi stiller når en tabell splittes opp i flere deltabeller.

**Svar:** 

- Normalform: Ser bare på hver tabell og evaluerer
- Attributtbevaring: Mulighet for å lagre den samme dataen.
- Tapsløs sammenstilling: Ikke opprette data som er feil/ikke skal eksistere. 
- Bevaring: Beholde samme funksjonelle avhengighet og restriksjon





**e)** Tabellen R skal nå dekomponeres i to deltabeller R1 og R2 som begge skal være på
BCNF. Finn et forslag på tabeller R 1 og R2 som oppfyller kravene spesifisert i d).
Svaret må begrunnes.

**Svar:** R1 = {A,D} og R2 = {A,B,C}. Her deler vi R opp i R1 og R2, slik at vi oppfyller kravene og tabellene blir på BNCF. 



**f)** Anta at vi har flerverdi-avhengighetene Navn ->> Rolle og Navn ->> Interesse som
gjelder for tabellen under. Tabellen er ikke på 4. normalform ettersom Navn ikke er
en supernøkkel for tabellen. Vi ser her at vi får en kilde til redundans (måten vi ville
løst dette på ville vært å splitte opp i to tabeller). Fyll ut de tomme radene for at dette
skal være en gyldig tabellforekomst.

**Svar:**

| Navn             | Rolle     | Interesse     |
| ---------------- | --------- | ------------- |
| Chris Martin     | Vokal     | Elefanter     |
| Chris Martin     | Piano     | Politikk      |
| Chris Martin     | Gitar     | Politikk      |
| **Chris Martin** | **Vokal** | **Politikk**  |
| **Chris Martin** | **Piano** | **Elefanter** |
| **Chris Martin** | **Gitar** | **Elefanter** |



#### Oppgave 2:

![image-20200401203644920](/home/kristoffer/.config/Typora/typora-user-images/image-20200401203644920.png)







#### Oppgave 5:

```sql
1 - SELECT * From Person; 

Vi må aksessere alle blokkene i heapfilen - 1250 stk

2 - SELECT * From Person WHERE PersonID = 195800;

Vi må sjekke halvparten av disse forekomstene: 1250/2 = 625 stk

3 - SELECT PersonID WHERE LastName = “Søkerud”;

Vi reduserer til "leaf level" = 2 blokker, søker mot siden med 20% match. Får da: 

0.2 * 1250 + 2 = 252 blokker

4 - SELECT DISTINCT LastName FROM Person;

Her aksesseres alle blokkene i heapfilen - 1250 stk

5 - INSERT INTO Person(195230, ‘Per’, ‘Persen’, 1971, 185);

Alle blokkene i heapfilen, ettersom vi må sjekke om person allerede eksisterer - 1250 stk
```





```sql
1 - SELECT * FROM Person where PersonID = 195454
Sjekker halve fila 1875/2 = 937,5 ≈ 9382. 

2 - SELECT * FROM Person
Aksesserer alle blokkene + gå ned to løvnoder, så 1875 + 2 = 1877 blokker 

3- SELECT * FROM Person ORDER BY PersonID ASC
Antar at treet er sortert på PersonID, så 1875 + 2 = 1877 blokker

4- SELECT FirstName, LastName FROM Person WHERE PersonID < 100000
Anta at 5% av personene tilfredsstiller betingelsen.I eksempelet:

Traverserer ned B+treet til vi kommer til "leaf level". Antar her også at 20% av 
Here, we need to traverse down the B+-tree, and scan forwards at the leaf level. If we assume that 20 % of the keys match, we traverse 2 blocks down and 0.2*1500 sideways. 302 blocks
```

