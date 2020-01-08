# TDT 4186 - Operativsystemer

Læringsutbytte i emnet vil være:

*Kunnskaper:*

- Studenten skal forstå hvilke oppgaver et operativsystem løser, hvordan oppgavene løses og bruksegenskapene ved et operativsystem.
- Studenten skal kunne arbeide med en operativsystemkjerne, prosesser, tråder, synkronisering, tidsdeling, minnehåndtering, filsystemer, I/O, vranglåshåndtering, multiprosessorsystemer og sikkerhet.

*Ferdigheter:*

- Studenten skal kunne utnytte operativsystemet effektivt, som systemutvikler, som administrator og som sluttbruker.
- Studenten skal kunne programmere med tråder og synkronisering. 

*Generell kompetanse:*

- Studenten skal kjenne utfordringer med og løsninger for håndtering av ressurser som prosessorer og minne.
- Studentene skal kunne håndtere grensesnitt som programvare-maskinvare.



## Pensum

Læreboken i emnet:

- William Stallings: Operating Systems - Internals and Design Principles; 9th Global Edition - Pearson

Tentativt pensum: Kapitlene 1-12 & 15 + Appendiks A.  E-boken er i denne mappen. 



[TOC]



## Forelesninger

Forelesninger vil være på **Tirsdager 08-10 (EL3)** og **Torsdager 10-12 (S2)**. 

Vi bruker de tolvukene 2-3, 5-11, 13& 16-17. Åtte av ukene foreleses det både i tirsdagstimene og torsdagstimene, mens fire av ukene foreleses det bare i tirsdagstimene/torsdagstimene. Totalt gir det 40 forelesningstimer – som i snitt er litt under 3 timer per hver av de 14 normerte uker. Det kan komme endringer underveis. Forelesningene gis av Prof. Mads Nygård.



![image-20200105104859833](/home/kristoffer/.config/Typora/typora-user-images/image-20200105104859833.png)



*Kommer til å være en weird blanding av norsk og engelsk her, deal with it*



### Oppstart, Intro og Bakgrunn

[Kapittel 1-2]

#### Kap 1: Overblikk

**Operativsystemet** utnytter hardware-ressursene til en eller flere prosessorer, tilbyr en rekke tjenester til systembrukeren og håndterer sekundærminnet og I/O-enheter. 

Består av Prosessor, I/O-moduler, Hovedminnne og Systembuss.

**Prosessoren** (CPU) kontrollerer operasjonene maskinen foretar seg og utfører databehandlingsfunksjonene. 

**Hovedminne** lagrer data og programmer. Typisk volatilt (mister data når strømmen går). Ofte kalt primærminne. 

**I/O-moduler** flytter data mellom maskinen og eksterne enheter, som terminaler, sekundærminne (disker/USB) og annet utstyr (mus, tastatur osv). 

**Systembussen** tillater kommunikasjon mellom prosessoren, hovedminnet og I/O-modulene

![image-20200105120045889](/home/kristoffer/.config/Typora/typora-user-images/image-20200105120045889.png)

Oppfinnelsen av **mikroprosessorer** medførte håndholdte maskiner. Har en prosessor på en chip. Raskeste *general purpose processors* (GPP). Hver chip (socket) inneholder flere prosessorer (cores). 

**Graphical Processing Units (GPU's)** tilbyr effektiv utregning på arrayer av data ved hjelp av SIMD (Single Intruction, Multiple Data) teknikker. Brukes også for generell numerik utregning (fysikksimulasjoner osv). 

**Digital Signal Processors (DSP's)** håndterer streaming av video og lyd. Enkoder og dekoder tale og video (codecs). Tilbyr støtte for kryptering og sikkerhet.

**System on a Chip (SoC)** erstattet den klassiske mikroprosessoren pga kravene stilt av håndholdte enheter. Andre komponenter, som DSP, GPU, I/O-enheter, hovedminne og CPU er på samme chip. 

**Instruction excecution**: et program består av en rekke intruksjoner som er lagret i minnet. Fetch-Decode-Excecute. 

Prosessoren henter en intruksjon fra minnet. Typisk PC (programtelleren) som har adressen til den neste instruksjonen. Instruksjonen lastes så inn i IR (Intruction register). 

**Interrupts** er en mekanisme hvor moduler kan forstyrre den normale sekvensen til prosessoren. Skal øke utnyttelsen av prosessoren: de fleste I/O-enheter er tregere enn prosessoren (CPU må vente på enheten -> fører til dårlig bruk av CPU, "wasteful"). 

![image-20200105122929095](/home/kristoffer/.config/Typora/typora-user-images/image-20200105122929095.png)

**Multiple Interrupts**: en interrupt oppstår mens en annen interrupt blir prosessert. Har to handlemåter: enten bruke et *priority scheme* eller deaktivere interrupts mens en interrupt blir prosessert. 

**Minnehierarki**: ganske åpenbart. Når du går nedover i hierarkiet;

1. Reduseres kostnaden pr bit
2. Økes kapasiteten
3. Økes aksesstiden
4. Reduseres frekvensen av aksesser fra prosessoren. 

Må ta en vurdering på hvordan man skal vekte kostnad, kapasitet og hurtighet. 

**Principle of Locality**: minnereferanser gjort av prosessoren har en tendens til å klumpe seg sammen. 

**Cache** er usynlig til OS. Utnytter lokalitetsprinsippet med et lite, raskt minne. Prosessoren må aksessere minnet minst en gang pr *instruction cycle*. 

**Mapping function** bestemmer hvor cachen skal lagres. 

**Least Recently Used (LRU)**: erstatter den blokken i cachen som ikke har blitt brukt på lenge. FIFO hadde vært superdust. 

Har tre **I/O-Techniques**: Programmed I/O (Starter, Venter, Avslutter), Interrupt-Driven I/O (Starter, Restarter, Avslutter) og Direct Memory Access (DMA) (Starter, Avslutter). 



#### Kap 2: Spenn av operativsystemer





### Bruk av CPU (Forhold mellom prosesser 1)

[Kapittel 3-4 og 5-6]

### Forhold mellom prosesser 2

[Kapittel 5-6]

### Forhold mellom prosesser 3

[Kapittel 5-6]

### Bruk av lager 1

[Kapittel 7-8]

### Bruk av lager 2

[Kapittel 7-8]

### Kjøring av prosesser 1

[Kapittel 9-10]

### Kjøring av prosesser 2

[Kapittel 9-10]

### Bruk av I/O

[Kapittel 11-12]

### Sikkerhet 1

[Kapittel 15]

### Sikkerhet 2, Avslutning & Oppsummering

[Kapittel 15, Alt]

### Eksamen! [22.05.2020]





## Notater fra boka









