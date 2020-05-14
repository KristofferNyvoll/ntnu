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

Tentativt pensum: Kapitlene 1-12 & 15 + Appendiks A. 



[TOC]



## Forelesninger

Det anbefales å møte i forelesninger i dette faget. Totalt er det 40 forelesningstimer – som i snitt er litt under 3 timer per hver av de 14 normerte ukene. Forelesningene gis av Prof. Mads Nygård. Han er flink!



![image-20200105104859833](/home/kristoffer/.config/Typora/typora-user-images/image-20200105104859833.png)



*Kommer til å være en weird blanding av norsk og engelsk her, deal with det*



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

**Hva er et OS?**

For brukere: tilbud på tjenester. Så enkelt som mulig

For systemet: Forvaltning av ressurser - så effektivt som mulig

Bruker -> Program -> OS -> Maskin

**Hardware**: Execution hardware, Memory translation, bus, I/= devices and main memory.

**Software**: Application programs, libraries, OS. 



**Spenn:**

- Stormaskin OS (Bankapplikasjoner)
- Tjenermaskin OS (Nettverkstjenester)
- Personlig datamaskin OS (Bord/Fang)
- Mobil datamaskin OS (Brett/ Mobil)
- Mikrokontroller OS (Innebygde systemer, sanntidssystemer, sensornoder, smartkort)



- Multiprosessor OS (Utvidete maskiner)
- Distribuert system OS (Sammenkoplede maskiner)



- Unix, Linux, Android; Windows, MacOS



**Brukerfokus**: 

- Konstruksjon og kjøring av program
- Innlegging og beskyttelse av datasett
- Lovlig og riktig bruk av systemet (Kort responstid for den enkelte)

**Systemfokus**: 

- Sikre utnyttelse av prosesseringsenhetene og lagringsenhetene
- Koordinere I/O - enhetene



Historie av utvikling av OS: Fra Uniprogrammert til Multiprogrammert.  (med og uten timesharing - flere batcher)



**Beskyttelse og sikkerhet (tidlig historie)**:

Hvilken aktør kan gjøre gitt aktivitet på gitt objekt? 

Dilemma: Deling og beskyttelse på samme tid. 



**Fra prosess til tråder (moderne)**

En enkelt prosess består av Registre (Kontroll og status) og Lager (Kontekst, Stakk og Data, Program). 

Tråder består av flere prosesser som skriver til ett felles lager (i tillegg til hver enkelts prosess sitt lager) 



**Fra en til flere prosessorer (moderne)**

Typisk: Prossorne er like. Lett å implementere - Vanskelig å skalere. 

Utfordringer: OS-funksjonalitet, Prosessorsynkronisering, Lagerhåndtering og Tidsstyring. 



**Fra en til flere kjerner (moderne)**

Utfordringen her ligger i ytelsesutnyttelse. Det løses med virtuelle maskiner (VM) og Sentral Støtte (GCD). Det er ofte caching på flere nivå og. Gjør det mer komplisert



### Bruk av CPU (Forhold mellom prosesser 1)

[Kapittel 3-4 og 5-6]



#### Kap 3 - Prosesser

**Prosess-begrepet** - tema: Bruk av CPU [Prosess: Program under utførelse]

- Representasjon av prosesser: Kap 3 + Kap 4
- Synkronisering av / kommunikasjon mellom prosesser: Kap 5 + Kap 6
- Tidsstyring av prosesser: Kap 9 + Kap 10



![image-20200114202938680](/home/kristoffer/.config/Typora/typora-user-images/image-20200114202938680.png)



Basismodellen for prosesstilstander beskriver en prosess fra den er *oppstartet*, til *kjørbar* (hvor den venter til CPU blir tildelt) slik at den kan *kjøres*. Der kan den enten bli *blokkert* (f.eks. ved I/O hendelse) eller *avsluttet*. Modellen kan naturligvis bli mer komplisert!



**Prosesskontekst: Mer detaljert innhold**

- Identifikasjon (Jeg/Far/Mor aka Bruker)
- Status (Brukerregistrering/Systemregistrering. Strukturer for kontroll)
- Kontroll (Tilstand, Prioritet, Tildelte ressurser og avventende hendelser)



*Prosesskifte*: Bytte CPU fra en prosess til en annen. Tilstandsendringer for to prosesser. Modusskifter

*Modusskifte*: Bytte adresserom og instruksjonssett. Eksternt avbrudd (OS-kall)



#### Kap 4 - Ulike utvidelser

Fordeler og ulemper med tråder

Pluss: 

- Skiller ressurseierskap og CPU bruk
- Passer naturlig applikasjonsstruktur
- Gir ny kommunikasjon via deling av lager
- Gir færre tidkrevende prosesskifter

Minus: 

- Mer kompleks styring og kontroll
- Flere gjensidig avhengige konsepter

Nye utfordringer: Effektiv utnyttelse av flere prosessnivåer. Riktig synkronisering og kommunikasjon innen avenserte applikasjoner. 



**Brukertråder (JVM)**

- Billige og blokkerende systemkall
- Vil ikke kunne utnytte multiprosessorer

**Kjernetråder (Windows 8)**

- Dyre ikke-blokkerende systemkall
- Vil kunne utnytte multiprosessorer

Solaris UNIX bruker begge (best of both worlds??)



#### Kap 4 - Fra prosesser til tåder

Delt adresserom: kjempegod løsning; bare en ulempe: sårbart for hackere. Området var åpent for andre prosesser. 

Tråder kan kalles "miniprogrammer" eller "miniprosesser".  De opererer i praksis med samme data, men de berører ikke hverandre. Derfor er de nyttige. Du kan sette i gang aktiviteter som kan gå samtidig. I denne løsningen er adresserommet ikke delt, ergo vises ikke kjerne-områder. 

For at de skal kjære i parallell må trådene være uavhengige av hverandre.  Se figur under. Si at prosess B skal skrive noe som A gir som output. Da kan de ikke kjøre i parallell. 

![image-20200128084056165](/home/kristoffer/.config/Typora/typora-user-images/image-20200128084056165.png)

I Java Virtual Machine hadde man et trådbibliotek, da var trådene usynlige for OS'et. 

*Kjernetråd* = kernel level thread (KLT)

*Brukertråd* = user level thread (ULT)



| Brukertråder (JVM)                      | Kjernetråder (Windows)             |
| --------------------------------------- | ---------------------------------- |
| Billige systemkall                      | Dyre systemkall                    |
| Blokkerende systemkall                  | ikke-blokkerende                   |
| Vil ikke kunne utnytte multiprosessorer | Vil kunne utnytte multiprosessorer |

Brukertråder & Kjernetåder: Best of both worlds?? (Solaris UNIX)



**Tråder bruker du når du skal gjøre noe i parallell**

Hvorvidt du skal bruke kjerne eller bruker kommer an på behovet (du må ha hardware-støtte for å bruke kjerne)



**Fra multiprogrammering til multiprosessering**

Men èn CPU kan du ha *simulert* parallellitet. Med flere, kan du *faktisk* oppnå parallellitet

| Fordeler            | Ulemper              |
| ------------------- | -------------------- |
| Økt pålitelighet*   | Kompleks programvare |
| Økt ytelse          | Større ytelsesgap**  |
| Rèell parallellitet |                      |

*= flere kjerner, ikke avhengig av en enkelt CPU. Hvis en ryker, kan systemet fortsatt fungere

** = Gapet mellom utføring og I/O-enhet blir enda større når CPU blir enda raskere. 



### Forhold mellom prosesser 2

[Kapittel 5-6]

Semafor: i praksis en datastruktur. Er en teller som holder styr på noe (Antall printere, eller hvor mye av en gitt ressurs.)

Ventekø som ønsker tilgang til ressursene. 

Wait: Tell ned på varene, hvis det er noe ledig taes denne. (Teller ned)

Signal - "Nå gir jeg bort noe" (Teller opp - aldri mer enn 1)

![image-20200206104541026](/home/kristoffer/.config/Typora/typora-user-images/image-20200206104541026.png)

Teller MÅ settes til 1 ved initsialisering. 

- Semafor = 0 ; Ingen får komme inn
- Semafor = 2 ; Ikke mulig med gjensidig utelukkelse (Mutual exclusion - flere får plass selv om de ikke burde det)



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

### Leseplan

Hvordan lese boken effektivt med høy hastighet og tilfredstillende *retention*: 

Gjør disse stegene for hvert kapittel: 

1) Skimming - 10 sekunder pr. side = tar 1 time og 40 minutter totalt

2) Scanning  - 30 sekunder pr side = tar 5 timer totalt

3) Speedreading

	- Bruk forseringsteknikker
	- Legg til rette for dypt fokus



#### Kap 1 - Computer System Overview: 29-68

Torsdag 16.01: 39 sider

Tok 30 min. 

Handler om datamaskinens oppbygging og dets komponenter. Repetisjon fra TDT4160: Datadig. 



#### Kap 2 - Operating System Overview: 68-129

Fredag 17.01: 61 sider (Ble vel ferdig med denne på Mandag 20.01)

Prosessoren er rask. Ofte er den *idle* mens den venter på I/O-enheter. For å bruke den mer effektivt, brukes **multiprocessing**  og *time-sharing-systems*. Dette er seriell prosessering. 

Dro inn mye historie, fra uniprocessor til multi-thread/multicore OS. Fortalte hvordan utviklingen har vært siden UNIX ble skrevet av Bell Labs i 1970. System V Release 4 og BSD. Kult å lære mer om Linux. 

Visste ikke at Android var Linux-basert!!

Mye av grunnen til den store suksessen til både Linux og Android, er at det er Open-Source, noe som tillater et stort samfunn av dyktige utviklere til å komme med bidrag. Mye info om hvordan hierarkiet i OS'et er bygd opp (kernel, systemtjenester, applikasjoner og interfaces som knytter det hele sammen)



#### Kap 3 - Process Description and Control: 129-176

Søndag 19.01: 47 sider (Ferdig med denne på Onsdag 22.01)

Omhandler det viktigste begrepet i et OS: Prosessen.  En prosess går gjennom en del tilstander i sin levetid: Running (blir behandlet av prosessoren nå), Ready (venter på at OS'et skal dispatche den), Blocked/Waiting (venter på noe, som f.eks. en I/O operasjon), New og Exit. I en multiprosessor-maskin kan det være flere prosesser som er i "running" tilstanden samtidig. 

Dersom en kjørende prosess blir stoppet av en interrupt, utfører prosessoren en *mode switch*, hvor den overfører kontrollen til en OS-rutine. 

Mens prosessen er aktiv, så er det OS'et sin oppgave å allokere minne (og andre ressurser), håndtere interrupts og konflikter og koordinere dets aktiviteter. 



#### Kap 4 - Threads: 176-223

Mandag 20.01: 47 sider (Leste til s.200 22.01, resten 23.01)

Prosessser kan deles opp i threads. De har mange likheter, men er ikke den samme tingen. 

I et multithreaded system kan flere samtidige threads være definert i en og samme prosess. Dette kan gjøres enten ved *user-level* threads eller *kernel-level* threads. User-level er ukjente til OS'et, og styres av et *threads-library* som kjører i *the user-space of a process*. Det som gjøre user-level threads så effektivt, er at det ikke er nødvendig med en *mode switch* for å bytte mellom threads, slik som med *kernel-level*. Siden kernel-level håndteres av kernelen, kan de kjøres i parallell på en multiprosessor og dersom en thread blir blokkert, blokkerer det ikke hele prosessen. Den krever derimot, som sagt, mode switch for å bytte threads. 



#### Kap 5 - Concurrency: Mutual Exclusion and Synchronization: 223-289

Utgår. Søndag 26.01 & Mandag 27.01: 66 sider



#### Kap 6 - Concurrency: Deadlock and Starvation: 289-339

Utgår. Tirsdag 28.01: 50 sider



#### Kap 7 - Memory Management: 339-370

Torsdag 14.05: 31 sider



#### Kap 8 - Virtual Memory: 370-425

Torsdag 14.05: 55 sider



#### Kap 9 - Uniprocessor Scheduling: 425-460

Fredag 15.05: 35 sider



#### Kap 10 - Multiprocessor, Multicore, and Real-Time Scheduling: 460-505

Fredag 15.05: 45 sider



#### Kap 11 - I/O-Management and Disk Scheduling: 505-550

Lørdag 16.05: 45 sider



#### Kap 12 - File Management: 550-599

Lørdag 16.05: 49 sider



#### Stats

Sider: 599 - 29 = 570 sider i pensum. 

Per 12.05 gjenstår (570 - 200) = 370 sider. Dropper Concurrency, da gjenstår bare Kap 7 - 12 (260 sider). 

13.05 

- 12:00 - 13:30 Spørretime Zoom
- 14:00 - 17:00 Notere Wikipendium Memory + File systems
- 19:00 - 21:15 Notere I/O og Multicore Wikipendium (resten)
- 22:00 - 23:00 Skumme over Kap 1 - 4 

14.05

- 10:00 - 13:00 Lese Kap 7
- 15:00 - 22:00 Lese Kap 8 og se YT vids

15.05

- 09:00 - 14:00 Lese pensum

16.05

- Se over alle treningsoppgaver

Total tid til å lese pensum: 5 + 7 + 5 = 17 timer. Det er sikkert tilstrekkelig til å lese 260 sider. 



Magefølelse etter spørretime:

- Det skal leveres en pdf
- Det skal kun skrives tekst
- Kan sikkert legge ved skjermbilder og kodesnutter, dgb
- Blir nok litt flere oppgaver
- Ingenting som er plainly kunnskapsbasert
- Vit hvor i boka/wikipendium ting er
- Ta med basic utregning, men skriv gjerne bare tekst
- Det blir nok mye analyse/sammenlikning hvor man må anvende pensum
- Burde være mulig å bestå, we got this
- Boka, slides, teoriøvingen og praksisøvingen er alle relevante





## Øvinger

Teoretiske øvingsoppgaver fra læreboka–Vår 2020

Her identifiseres de frivillige teoriøvingene. Hver av disse øvingene er hentet fra læreboka. Disse øvingene dekker alle lærebokas kapitler som er pensum. Lærebokas kapitler 5 & 6 -Forhold mellom Prosesser, dekkes også av den obligatoriske praksisøvingen. 

#### TØ1 – Kap. 1 & 2:

- Problems 1.2, 1.5, 1.13
- Problems 2.1, 2.2, 2.6

#### TØ2 – Kap. 3 & 4:

- Problems 3.1, 3.6, 3.7
- Problems 4.1, 4.9, 4.11

#### TØ3 – Kap. 5 & 6+ App.A 

- Problems 5.6, 5.10, 5.21
- Problems 6.5, 6.14, 6.18
- Problems A.1 & A.2

#### TØ4 – Kap. 7 & 8 

- Problems 7.6, 7.7, 7.13
- Problems 8.2, 8.4, 8.17

#### TØ5 – Kap. 9 & 10

- Problems 9.2, 9.11, 9.16
- Problems 10.2, 10.3, 10.7

#### TØ6 – Kap. 11 & 12 

- Problems 11.3, 11.6, 11.11 
- Problems 12.1, 12.7, 12.13

#### TØ7 – Kap. 15

- Problems 15.2, 15.4, 15.9







