# TDT 4160 - Datamaskiner og Digitalteknikk

- - -

[TOC]



## Om faget

[Emneside på ntnu.no](https://www.ntnu.no/studier/emner/TDT4160#tab=omEmnet)

### Læringsmål

#### Kunnskaper

- Studenten skal kjenne til datamaskiners konstruksjon og virkemåte 
- Studenten skal forstå prinsippene for konstruksjon og analyse av sekvensielle digitale kretser og tilstandsmaskiner 
- Studenten skal forstå hvordan en enkel prosessor fungerer 
- Studenten skal forstå grensesnittet mellom programvare og maskinvare 
- Studenten skal kjenne til sentrale periferienheter 
- Studenten skal forstå hvordan abstraksjon og struktur benyttes for å håndtere kompleksitet i datamaskinsystemer.

#### Ferdigheter

- Studenten skal kunne formulere enkle programmer i assemblykode 
- Studenten skal være i stand til å anvende digitale kretselement til å  konstruere grunnleggende digitale sekvensielle kretser og  tilstandsmaskiner 
- Studenten skal være i stand til å lese skjemategninger og blokkdiagrammer 
- Studenten skal kunne relatere blokkdiagrammer og skjemategninger til hverandre på ulike abstraksjonsnivå. 

#### Generell kompetanse

- Studenten skal forstå den generelle virkemåten til en datamaskin og  kunne anvende denne kunnskapen i prosjekter på alle abstraksjonsnivå 
- Studenten skal forstå den underliggende digitale logikken som datamaskiner består av.



### Tips

Ikke gidd å møte i forelesninger med mindre du vil ha ting inn med teskje (og/eller liker å møte i forelesning generelt). *Mer effektivt å koke øvinger og øve uka før eksamen.*

Hvis Tufte er foreleser, burde det gå fint å koke samtlige øvinger. De er ikke (historisk sett) eksamensrelevante eller givende i det hele tatt. Odd-Rune er noe mer opptatt av man ikke skal koke, så da bør du etterstrebe å gjøre øvingene selv eller redigere ganske store deler av koden. 

Les gjerne boka. Kapittel 1 & 2 er ikke så relevante, men Kapittel 3, 4, 5 og litt av 6 er **veldig** eksamensrelevant (og er ganske interessant og!)

Se noen av [disse videoene](https://www.youtube.com/watch?v=tpIctyqH29Q&list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo), fra Crash Course på Youtube. Ikke alle er relevante, men de er super-basic. Kan være smart å se #3, 4, 5 og 6.

 



## Kapittel 1 & 2 (forkortelser, bakgrunn og prinsipp)

### Stikkord Kapittel 1 & 2

Dette er, som så mange andre introduksjonskapittel, ment å være et slags motiverende og innførende kapittel. Stikkord som er viktige (hentet fra foreleser Odd-Rune Lykkebo):

- Von Neumann-arkitekturer 
- Stored Program Computer
- Teknologidrivere som gir framdrift i ytelse.
  - Rele, transistorer og integrerte kretser
  - Moores lov
- Parallellitet
  - Instruksjonsnivåparallellisme (ILP)
  - Prosessornivåparallellitet (PLP)
  - Flynns hierarki (SIMD, MIMD, etc.)
- Minnehierarki
  - Forstå minnegapet
  - Forskjell på dynamisk og statisk minne
  - Forstå innflytelsen til cache på et minnehierarki



### Forkortelser og forklaringer

- **IJVM** - Integer Java Virtual Machine
- **ALU** - Arithmetic Logic Unit
- **MPC** - Micro Program Counter
- **P-ROM/PROM** - Programmable Read Only Memory
- **EP-ROM/EPROM** - Eraseable Programmable Read Only Memory. En type ROM hvor innholdet slettes ved hjelp av UV
-  **EEP-ROM/EEPROM** - Electrically Eraseable Programmable Read Only Memory. ROM som kan reprogrammeres
- **ISA** - Instruction Set Architecture
  - **RISC** - Reduced Instruction Set Computing. Utfører få instruksjoner, hver instruksjon tar kort tid. 
    - **Instruksjonsmønstre**: 1W eller to bytes
    - **Utføringstid**: Èn sykel per instruksjon
    - **Arbeid gjort**: ..per instruksjon
    - **Intet mikroprogram**: Utfører heller instruksjonen direkte
  - **CISC** - Complex Inctruction Set Computing
    - **Instruksjonsmønstre**: Mange W
    - **Utføringstid**: Gjennsomsnittlig antall sykler per instruksjon er 2 til 15
    - **Arbeid gjort**: Mye arbeid per instruksjon. Komplekse instruksjoner
    - **Instruksjoner per program**: Færre enn RICS. Skyldes større og mer komplekse instruksjoner. 
- **Microarchitecture**
  - **Von Neumann**
    - *Instruksjoner og data* ligger i samme minneenhet
    - Bruker samme BUS for instruksjoner og data. Simpelt design - færre komponenter
      - Beregninger skjer **sekvensielt** pga dette
    - Denne arkitekturen gjør det mulig å skrive program som kan endre sin engen programkode
    - Komponentene er hver for seg
      - 'Arbeidslager' som inneholder *data og instruksjoner* på **binær** form. 
      - ALU som kan utføre en del matematiske og logiske operasjoner
      - Kontrollenhet (CPU) som tolker instruksjoner i minnet og sørger for utførelse
      - I/O - enheter som sørger for kommunikasjon mellom bruker og kontrollenehet (CPU)
    - Utfordringen i dag er dataoverføring mellom minne og CPU. For stor hastighetsforskjell. 
    - Moderne datamaskiner har ALU og kontrollenhet på prosessor (CPU) som benytter seg av registre, hurtigbuffere, busser og millioner av transistorer. Konseptet er likt læll.
  - **Harvard**
    - Separert BUS for *instruksjoner og data*. Kan aksessere både data og instruksjoner i parallell.
    - Komponenter er hver for seg i parallell
      - CPU
      - Instruksjonsminne
      - Dataminne

![image-20191130143646457](/home/kristoffer/.config/Typora/typora-user-images/image-20191130143646457.png)

- **Superskalar CPU**: 
  - En superskalar-prosessor implementerer en form for parallelitet som kalles *instruksjonsnivåparallelitet*. Dette betyr at den kan utføre flere instruksjoner per klokkesyklus. (Dupliserer CPU-enheter)
- **Hardware Components**
  - Valgfritt å ha med
  - Eksempler:
    - **RAM** Random access memory
    - **ROM** Read-Only Memory
    - **I/O** - porter



- Mikro**prosessor**: ISA (Instruction Set Architecture) + Mikroarkitektur
- Mikro**kontroller**: ISA + Mikroarkitektur + Hardware Components
- **MIR**: Micro Instruction Register
  - **Addr** - (Address) peker på neste mikroinstruksjon i instruksjonen
  - **J** - (Jam) sier ifra om ALU har flagget neste mikroinstruksjon eller om det kommer et betinget hopp
  - **ALU** - (Arithmetic Logic Unit) - bestemmer hvilken funksjon ALU skal gjennomføre
  - **C** - (C-BUS) inneholder adressen til C-BUSen => Adressen til registeret det skal skrives **til**
  - **Mem** - (Memory) sier ifra om det skal gjøres noe annet
  - **B** - (B-BUS) inneholder adressen til B-BUSen => Adressen det skal skrives **fra**.
- **Dataavhengigheter**:
  - **RAW** - (Read-After-Write) (sanne dataavhengigheter) er når f.eks instruksjon 1 skriver til et register og instruksjon2 skal lese fra det samme registeret. 
  - **WAW** - (Write-After-Write) (utavhengigheter) er når f.eks. instruksjon 3 skriver til et register 1 og instruksjon 1 skriver til register 1
  - **WAR** - (Write-After-Read) (antiavhengigheter) er når f.eks. instruksjon 3 skriver til et register 1 og instruksjon 2 leser fra register 1.
- **RAM** - (Random Access Memory)
  - **SRAM** - (Statisk RAM) er raskt og trenger ikke oppdateres. Brukes i *hurtigbuffere*
  - **DRAM** - (Dynamisk RAM) må friskes opp jevnlig. Tar mindre plass enn SRAM (2 vs 6 transistorer)
  - **SDRAM** - (Synkront Dynamisk RAM) betyr at data blir overført til/fra *RAM* synkront med klokken (og systemBUSen)
- **CMP** - (Chip-Level MultiProsessor) er flere prosessorer på samme brikke. Disse bruker samme hurtigbuffer.
  - **Homogene kjerner** - alle kjernene er like
  - **Heterogene kjerner** - forskjellige kjerner til forskjellige oppgaver, dvs de har forskjellig instruksjonssett og/eller ytelse
  - Fordelen med CMP er lavere effekt/varmeutvikling, bedre utnyttelse av prosessorkraft og at det er lettere å utnytte *instruksjonsnivåparallellitet*"
- **Addressering** - Måten instruksjonen angir hvor data skal hentes fra kalles en adresseringsmodus
  - **Immidiate** - operanden er innbakt i instruksjonen. Dersom operanden er kjent (en konstant) når programmet lages, kan verdien av denne legges inn i selve instruksjonen. 
  - **Direkte** - Instruksjonen angir adressen til operand i RAM
  - **Indirekte** - Instruksjonen angir adresse til RAM-celle som igjen inneholder adressen til operand
  - **Register** - Intstruksjon har nummer på register som inneholder operand. Populært å bruke
  - **Indirekte register** - Instruksjon har nummer på register som ineholder adresse til operand i RAM
  - **Stakk** - Adressen er implisitt gitt av stakkpeker
- **Branch Protection** - Forgreningspredikering
  - **Statisk** - forutsier hopp uavhengig av hvor hopp har forekommet før. Forutsier alltid/aldri hopp. 
  - **Dynamisk** - forutsier hopp utifra hvor det har skjedd hopp tidligere
- **IC** - Integrated Circuit
- **Multiplex - 2ⁿ** data inputs, *1* data output og *n* kontroll input
- **Demultiplex - 1** datainput,  **2ⁿ** data output og *n* kontoll input
- **Half-adder** - A + B = sum + carry
- **Full-adder** - 2 Half-adders
- **Klokkepuls**:
  - Vanligvis: 100 MHz - 4 GHz
  - Verdier: 0/1
  - Asymmetrisk
  - Utfører operasjoner på 0 (0 er derfor lengre enn 1)
- **Latency Hiding** - Cache brukes til å øke ytelse (Reduserer både tid og rom)
- **Lokalitet:**
  - **Tid ** - om vi leste fra en minneadresse er det sannsynlig at vi snart vil lese fra den samme adressen igjen
  - **Rom** - om vi leste fra en minneadresse er det sannsynlig at vi snart vil lese fra naboadressen



### Register



- **PC** - Program Counter. inneholder adressen til instruksjonen som utføres, eller neste instruksjon som skal utføres. Dette er avhengig av måten maskinen er bygd.
- **IR** - Instruction Register. Er der kontrollenheten lagrer instruksjonen som blir gjennomført nå Den ligger i dette registeret så lenge instruksjonen blir dekodet, startet og gjennomført.
- **MAR** - Memory Adress Register. Innehodler adresse til neste minnelokasjon der vi finner neste instruksjon.
- **MDR** - Memory Data Register. Inneholder data som blir lagret i hovedminnet (RAM), eller data som har blitt hentet fra minnet. Dette virker som en buffer så data er klar for prossesor.
- **MBR** - Memory Buffer Register. Bufferregister mellom minne og prosessor.
- **LV** - Local Variable. Inneholder pekerverdi.
- **SP** - Stack Pointer. Inneholder pekerverdi
- **CPP** - Constant Pool Pointer. Inneholder pekerverdi
- **TOS** - Top of Stack. Inneholder "word" på toppen av stakken. 
- **OPC** - OpCode | Operation Code. Register kan fritt brukes. F.eks. MOV, ADD, LOAD.
- **H** - Holding Register. Inneholder verdien som skal inn i A-inngangen til ALU. 



### ALU - flagg

- **N** - settes når svaret fra ALU er negativt
- **Z** - settes når svaret fra ALU er 0
- **C** - carry
- **V** - overflow



### Instruksjon i Micro Program Memory

```assembly
.MPC
0000 0 0100
. . . . . . . .Shift ALU . . C buss . mem B buss
1: H  ← . . TOS: 00 010100 1000000000 000 0111
2: SP ← H + OPC: 00 111100 . 00001000 000 1000
```





### Moores lov

Basert på observasjonen av at antall transistorer i en integrert krets fordobles annethvert år. Oppkalt etter Gordon Moore, som antydet at utviklingen antas å være gyldig det neste tiåret. 

![img](https://s3-eu-west-1.amazonaws.com/wikipendium-public/15436851940x6715b.jpg)

### Stored-Program Computer

Lagrer programmet som kjøres i minnet, litt på samme måte som den lagrer annen data. Moderne datamaskiner er alle *stored-program computers*, dog bruker *Harvard Architecture* å lagre programmet i en separat RAM. 







## Kapittel 3 (Digtalt logisk nivå)

Kjernekunnskapen i dette kapittelet er å kunne tolke blokkdiagram og funksjonaliteten til enheter med logiske porter. 

Viktige stikkord: 

- Logiske porter som grunnlag for å forstå skjemategninger
- Busser
  - Adressering
  - Lesing og skriving
  - Adresserom (minnekart)
  - Asynkrone og synkrone busser
  - Serielle og parallelle busser. 
  - Arbitrering av busser med flere enheter.

- Forstå og skjønne blokkdiagram
  - Registerfiler
  - ALU
  - MUX
  - Dekodere
  - Adressedekoding
  - Endelige tilstandsmaskiner
    - Tabeller
    - Tilstandsdiagram



Datamaskiner består av integrerte kretskort (IC) som inneholder små forbindelser kalt **gates**. De vanligste *gatene* er AND, OR, NAND, NOR og NOT. Enkle kretser kan bygges ved å kobinere disse individuelle *gatene*. 

Mer komplekse *gater* er **multiplexers, demultiplexers, encoders, decoders, shifters og ALU**. *Boolean functions* kan programmeres med en FPGA (). De er ofte mer effektive dersom vi har flere funksjoner. Bruk **BA** (Bool algebra) til å forenkle uttrykk. Mindre kretser, er kjappere og mer økonomiske kretser. 

Aritmetikk er gjort med **adders**. En **single-bit full adder** kan bli konstruert av to **half adders**. Dersom du har et multibit ord, kan man bruke flere adders og ha en **carry**. 

Komponentene til minne er **latches** og **flip-flops**. De kan begge lagre en bit med informasjon. Statisk minne trenger ikke oppdateres, men dynamisk minne må oppdateres jevnlig for å ikke miste data. 

Komponentene i en datamaskin er knyttet sammen med busser. **Synkrone** busser er stryrt av en master-klokke. **Asynkrone** busser bruker en full *handshake* mellom slave og master. 



## Kapittel 4 (Mikroarkitektur)

Kapittel 4 har som mål å forklare mikroarkitekturbegrepet, og hvordan dette kan benyttes til å implementere et instruksjonssett i digitallogikk. Dette nivået består hovedsaklig av “bokser og piler” som prøver å gi en beskrivelse av hvilke enheter som prater sammen og hvordan de relaterer til kontrollstier og datastier. Det gjennomgående eksempelet i boka har vært IJVM, men det er forventa at den generelle kunnskapen skal kunne benyttes til å skjønne “nye” mikroarkitekturer.

- Oppbygging av datastier (“data path”)
- Bussgrensesnitt mot eksternt minne.
- Kontrollenheter

Generelle poeng som man kan hente fra IJVM-eksemplet i boka:

- Hvordan en kontrollenhet kan fungere.
  - Relasjonen mellom ISA-nivået og mikroprogrammet
  - Mikroprogrammet sin rolle i kontrollenheter
  - Hvordan mikroinstruksjoner spesifiserer hopp 
- Datasti
  - Busser og kontroll av busser
  - ALU, shifter og kontrollstier
  - Hvordan register benyttes for å aksessere eksternt minne 
- Dataflyten
  - Sekvensering av kontrollsignal for å flytte data rundt på datastien.



Optimalisering og ytelsesforbedringer i mikroarkitekturer. Det er i hovedsak to hovedspørsmål ved hver av de innførte metodene:

- Ytelsespåvirkning
- Implikasjoner på kontrollenhet og chip-kostnader (areal, strømforbruk)



Dette gjelder for

- Innføring av ekstra busser
- Innføring av instruksjonshentingsenhet (IFU)
  - Spesielt i forhold til henting av neste instruksjon ved hopp/branch.
- Samlebånd (pipeline)



Spesielt vedrørende samlebånd:

- Hvordan en instruksjon kan “deles opp” i uavhengige deler.
- Hvordan register benyttes til å dele opp CPU i uavhengige “domene”
- Påvirkning på klokkefrekvensen til CPU (kritisk sti)
- Hvordan man skal håndtere hoppinstruksjoner på et samlebånd.
- Avhengigheter mellom instruksjoner [RAW, WAR, WAW]



### Datapaths

En samling funksjonelle enheter som håndterer dataprosessering (og operasjoner). Datastier utgjør CPU'en (Central Processing Unit) sammen med **kontrollenheten**. En større datasti kan lages ved å kombinere mindre datastier med multiplexere. 



### Control unit

Se for deg kontrollenheten som *kapteinen* til datamaskinen. Den mottar ordre fra RAM, i form av en instruksjon, og igangsetter de operasjonene som skal gjøres. ".. er en komponent som dirigerer prosessorens operasjoner. Den forteller minnet, ALU'en og I/O-enheter hvordan de skal reagere på instruksjoner."



### Hopp (Jumps)

Når *jump*-instruksjonen utføres (siste steg), så setter den en ny adresse inn i PC (Program Counter). Den neste instruksjonen som blir hentet har da denne nye adressen. I stedet for å utføre instruksjonen som etterfølger *jump-instruksjonen*, så **hopper** prosessoren til et annet sted i minnet. 



### Busser

Kommunikasjonssystem som overfører data mellom komponenter i en datamaskin. De var enklere før, men kan nå bruke både parallelle og "bit serial" forbindelser, og kan bli tilkoblet enten en **multidrop** eller **daisy chain** topologi. (Den kan også kobles med "switched hubs", som med USB (Universal Serial Bus)). Knytter de interne komponentene, som f.eks CPU og minne, til hovedkortet. 

**Daisy Chain** betyr at enhetene er koblet sammen i en sekvens eller ing, litt som en tusenfrydblomst (daisy flower).  



### IJVM

IJVM (Integer Java Virtual Machine) er en *stack-machine* som pusher, popper eller legger sammen ord til/fra/på stakken. En mikroprogrammert implementasjon

**VELDIG VIKTIG Å FORSTÅ DETTE PÅ EKSAMEN**! Sitat fra foreleser:

> Har du forstått denne mikroarkitekturen, har du forstått emnet



### Misc

I hjertet av enhver datamaskin er datastiene. Det inneholder registre, 1/2/3 buss(er) og minst en funksjonell enhet som ALU eller *shifters*. *The main execution loop* består av å hente noen operander fra registrene og sende dem over bussene til ALU'en og andre funksjonelle enheter for utførelse. Resultatet lagres i registrene. 

**IJVM**-maskinen er en stakkmaskin med 1-bytes opcodessom pusher, popper og kombinerer ord i stakken. En mikroprogrammert implementasjon ble gitt ved Mic-1-mikroarkitekturen. En *instruction fetch* enhet forhåndslastet dataen (og dermed gjorde mange referanser til PC'en overflødige) og gjorde maskinen raskere.

Ytelse kan økes på mange måter: cache minne er spesielt viktig. *Direct-mapped caches and set-associative caches* er mye brukt. *Branch prediction*, både statisk og dynamisk, er også ganske vanlig. 



## Kapittel 5 (ISA, ikke 5.7 og 5.8)

ISA-nivået, eller instruksjonssettnivået, var opprinnelig det eneste nivået som en utvikler hadde tilgjengelig. ISA-nivået beskriver alle instruksjonene som maskinen kan utføre, og effekten av hver instruksjon på en slik måte at en utvikler ikke blir “overrasket” over resultatet. Tidligere fikk man utlevert en rimelig stor manual med alle mulige varianter av instruksjonene til maskinen. Dette har i hovedsak blitt rollen til kompilatorene i dag, men vi har i øvingsopplegget og jobbet tilnærmet direkte med ISA-nivået til en ARM-prosessor.

- RISC
  - Karakteristikker ved RISC-maskiner
- CISC
  - Karakteristikker ved CISC-maskiner
- Instruksjoner
  - Format/type: 0-adresse, 1-adresse, 2-adresse, etc.
  - Adresseringsmoduser
  - Håndtering av felt i instruksjoner
    - Immediate, Direct, Register, Register indirect, Indexed
- Lengde på instruksjoner
  - Dataflytting
  - Datamanipulering (dydadic, monadic)
  - Sammenligninger og betinget hopp 
  - I/O, herunder interrupts
- Avhengigheter mellom instruksjoner (Read må skje etter write, for eksempel. "True dependency")
- Relasjonen/avhengighet/uavhengighet mellom mikroarkitektur og ISA



### RISC & CISC

Reduced instruction set computer (RISC) er en type mikroprosessor. I motsetning til **CISC** (Complex instruction set computer) kan den utføre relativt få instrusksjoner, men er desto raskere. Komplekse beregninger krever gjerne at flere instruksjoner kjøres etter hverandre på en RISC-prosessor, mens en CISC-prosessor kunne gjort en tilsvarende bergning i ett trinn. 



**Backward compatible**: nye maskiner må være i stand til å kjøre "gamle" program uten endring. Nye maskiner kan derimot ha nye *features*.



### Addresseringmoduser

*Immediate mode*: operanden er spesifisert i instrukasjonen, typ: ADD 7

*Register mode*: Operanden er lagret i registeret. Registeret er i CPU'en. Instruksjonen har addressen til registeret som har operanden.

*Register indirect mode*: Samme som over, men CPU'en peker til minnet, hvor operanden er plassert

*Direct addressing moode*: Den effektive addressen er i selve instruksjonen, typ ADD R1, 4000. Her er 4000 addressen. 

*Indirect addressing mode*: Addressen i minnet peker til operanden, som er et annet sted i minnet. 



**Fetch-decode-execute cycle**

*Fetch* instruksjonen fra minneaddressen som er i PC lagres i instruction register (IR). Etter dette, inkrementer PC. 

*Decode* instruksjonen i IR utføres av dekoderen. 

*Read* the effective address. Operanden leses 

*Execute* instruksjonen. Kontrollenheten flytter informasjonen til CPU'en. Resultatet lagres og sendes til en output device. 



## Kapittel 6.0 og 6.1 (virtuelt minne)

Hovedsaklig tema du møter igjen i faget *operativsystem*.

- Virtuelt minne
- Sideinndeling (paging)
  - Sidetabeller
- Fordeling (schedulering) av CPU-resursser
- Program vs prosessser
- Hvordan flyttal representeres

Operativsystemet tolker enkelte arkitektur-relaterte *features* som ikke eksisterer på ISA-nivået. Herunder har vi virtuelt minne, virtuelt I/O.  



### Virtuelt minne

Hensikten med VM er å tillate program å bruke mer adresseområde enn maskinen har fysisk lagring til. Det kan også brukes til å forsørge for en fleksibel mekanisme for minnedeling og minnebeskyttelse. 

 



## Kapittel 7 og 8 (bakgrunn for ASM og parallellitet) 

Mer detaljer for de som vil fordype seg, men ikke direkte eksamensstoff

**aka ikke les** (anbefaler en psykiatrisk evaluering dersom du leser dette)



## Sekvensiell logikk (kompendium på BlackBoard) 

[Tok selv sjansen på å ikke lese denne]



## Artikkel om ChipMulti Processor 

Denne handler bare om hvordan utviklingen til prosessorer kan være/har vært og vil bli. 

Hvis du vil vite litt om hva som forhindrer prosessorer i å bli enda bedre (tempratur, antall transistorer, pris og markedsføring), så er denne grei å lese. Tar 5 min. 

Denne var pensum H2019. 





## Eksamen 2015

#### Oppg 1

**a)**

Ja, man redusere til 20 ns for alternativ 2 og 10 ns for alternativ 3

Frekvens alternativ 2: 1 / 20 *10⁻⁹ Hz = 50 Mhz

Frekvens alternativ 3: 1 / 10 *10⁻⁹ Hz = 100 MHz



**b)**

c + (1 - h) * m 

0.025 + 0.1 * 2 = 0,225 μs.  



**c)**

Superskalar prosessor: Kan utføre flere instruksjoner i samme klokkesykel. Har flere execution units, til forskjell fra skalar prosessor, som bare kan utføre en per klokkesykel. Implementerer en form for parallellisme. 



**d)**

SIMD (Single instruction, multiple data) = Kan utføre samme instruksjon på flere datapoints. 



**e)**

ILP = Instruction level parallellism. Nei, ISA definerer instruksjoner logisk. En ISA kan ha flere alternative mikroarkitekturer. 





#### Oppg 2

**a)**

ROM: F000 - FFFF

RAM 1: 0000 - 0FFF

RAM 2: 8000 - 87FF

 

Ja, vi har adresseområder som ikke blir brukt. 

Fra 1000 - 7FFF og 8800 - EFFF er ledig.



**b)**

Ved 2 MHz har vi at en klokkesykel varer i 0,5 μs. 

1/0,5MHz gir 2 μs. Ergo er det **ikke** nok tid, så det er ikke mulig



**c)**

i) 

Dette er en Moore FSM, ettersom X ikke har *direkte* innlytelse på Y. (Altså at den ikke er gjennom noen logiske porter e.l). Moore: output avhenger kun av maskinens *current state*, mens Mealy i tillegg avhenger av input. 



ii) 

D0 = X AND NOT(Q0)

D1 = X AND (Q0 XOR Q1)



iii)

Y = 1 når D0 XOR D1



#### Oppg 3

**a)**

i) 

MBR (Memory Byte Register). C-bussen kobles ikke til denne, så den kan ikke skrives til. MAR (Memory Address Register) er heller ikke tilgjengelig (kan ikke leses). 



ii) 

MAR (Memory Address Register) *holds the address to which we want to write* og MDR (Memory Data Register) *holds data waiting to be written to the MAR*. 



**b)**

i) 

ALU: 010100 (B)

C: 0000 0000 1 (Til MAR)

B: 0111 (Fra TOS)

MEM : 0 



ii) 

```assembly
LOAD LV TO H

ADD H AND MAR TO H

ADD H AND PC TO PC
```





**c)**

1: CPP to H

2: H OR TOS TO H AND TOS

3: H AND OPC TO TOS



1: H = 0003 

2: H, TOS = 0003 OR 0004 = 0007

3: TOS = 0007 AND 0005 = 0111 AND 0101 = hex(0005)



**H registeret er 0007 og OPC registeret er 0005**



#### Oppg 4

**a)**

BZ: 1 adresse instruksjon. 1 operand

RT: Ingen operand, 0 adresse instruksjon



**b)**

MOVC : Immediate, siden den er *constant*

CP: Registeradressering, hver operand er et register. 



**c)**

Ja, begge bruker 32-bits register. 



**d)**

i) R2 (altså 0z00 AA)

ii) Nei, ting kan ikke bli 0





## Eksamen 2016

#### Oppg 1

**a)**

Register: ALU

Mikroinstruksjonsminne: Kontrollenhet

Hurtigbuffer: Minne



**b)**

i) ILP (Instruction Level Parallellism): Flere instruksjoner kan utføres samtidig. 

ii) PLP (Processor Level Parallellism): Prosessoren har flere kjerner som kan utføre logiske og aritmetiske operasjoner samtidig. PLP kan kjøre uavhengige instruksjoner, som kan være på samme sted i f - d -e sykelen. 



**c)**

I/O med travel venting: prosessen sjekker gjentatte ganger om en betingelse er sann. Prosessoren lytter til I/O. 

Avbruddsdrevet I/O: Venter på at *noe* skal skje, typisk er dette at en bruker trykker på en knapp e.l. Når en oppgave er ferdig, så sender I/O et interrupt signal til prosessoren. Dette signalet impliserer at oppgaven er utført.



**d)**

Lokalitet: Dersom vi skal fetche en gitt data, kan vi anta at den neste dataen vi skal hente kommer til å være i umiddelbar nærhet til denne dataen. Nærliggende data caches. 

Leter først i cachen, lagrer dataen som brukes i cachen.  Rom og tid.



**e)**

Homogene har identiske kjerner, mens heterogene har alltid ulike kjerner



#### Oppg 2

**a)**

| F2   | F1   | F0   | Utgang | Output     |
| ---- | ---- | ---- | ------ | ---------- |
| 0    | 0    | 0    | D0     | 0          |
| 0    | 0    | 1    | D1     | Full Adder |
| 0    | 1    | 0    | D2     | A XOR B    |
| 0    | 1    | 1    | D3     | A AND B    |
| 1    | 0    | 0    | D4     | A OR B     |
| 1    | 0    | 1    | D5     | A NAND B   |
| 1    | 1    | 0    | D6     | NOT A      |
| 1    | 1    | 1    | D7     | A          |

Dette er en enkel 1-bit ALU med en Carry-inngang (C) og en Carry-utgang (C) samt to input-verdier (A, B). 



**b)**

i) 

RAM: 001x xxxx xxxx xxxx ->  **2000-3FFF**

ROM: 000x xxxx  xxxx xxxx-> **0000-1FFF**

Sensors: 1111 1111 1111 xxxx -> **FFF0-FFFF**

Alarm: 1111 1111 1111 1110 -> **FFFE**

 

ii) 

1FFF - 2000, 3FFF-FFF0



iii) 

Ja, det er overlapp: Alarmen ligger i sensoren. FFFE

Sensoren bruker kun read og alarmen bruker kun write. Det vil altså ikke bli konflikt i minneaksess. 





**c)**

D0 = OK AND NOT(Q0) AND NOT(Q1) AND NOT(Q2) = OK AND NOT(Q0 AND Q1 AND Q2)

D1 = [NOT(Q2) AND Q1 NOT(Q0) AND OK] OR [NOT(Q2) AND NOT(Q1) AND Q0 AND OK]

​       

D2 = 

Y = NOT(Q0) AND NOT(Q1) AND Q2 

| D2   | D1   | D0   | OK   |
| ---- | ---- | ---- | ---- |
| 0    | 0    | 0    | 0    |
| 0    | 0    | 1    | 1    |
| 0    | 1    | 1    | 1    |
| 1    | 0    | 0    | 1    |
| 1    | 1    | 0    | 1    |

Dette er en teller. 



**d)**

Moore, input har ikke direkte innflytelse på output. 





#### Oppg 3

**a)**

MAR = Memory Address Register. Holder adressene til instruksjonene

MDR = Memory Data Register. Holder dataen til adressen som MAR peker til. 

PC = Program Counter. Viser til adressen til den neste instruksjonen som skal utføres. 

MBR = Memory Buffer Register. opCode fra instruksjonsregisteret (eller operand). 



 

**b)**

Dette kan gjøres på en instruksjon:

Flushe H gjennom ALU: 011000 (A), så sende H-verdien til riktig registre: 0111 0000 0 (C-buss til OPC, TOS og CPP). 

MEM=0 og B=0



**d)**

Den ekstra biten i MPC markerer flagg



**e)**

Lengden på mikroinstruksjon: 36 bit. Står i control store-komponenten. (512 x 36 -bit)





#### Oppg 4

**a)**

RISC: Reduced Instruction Set Computer. 

- Load/store arkitektur

- Samme format (lengde) på alle instruksjoner

- Relativt enkle instruksjoner. 



**b)**

Immediate: MOVC (siden den har *constant*, dvs operand gitt som verdi i instruksjon)

Nulladresseinstruksjon: NOP og RT. (Ingen av dem har operander)



**c)**

32 bit



## Eksamen 2017

#### Oppg 1

**a)** 

In a stored-program computer, the executing program is stored in memory. Both instructions and data. Most modern computers work in this way. This solution is used in the Von Neumann architecture. 



**b)**

i) [Does the bus transfer depend on the clock?]

Synchronous. OSC refers the clock signal, which implies that the transfer depends on the clock. 



ii) [Size of maxiumum adress space]

2 x 8-bit ports. That means 2¹⁶ adresses maximum. (2 to the sixteen'th power)



iii) [bits in word memory]

Bit-width = 8 bit

opCode on port 0 is 8 bit. 



**c)**

i) Superscalar: Multiple execution units in the same processor. Can handle instructions in parallell.   

ii) Yes, but you have to implement some additional logic. 



**d)**

Harvard: Control unit, memory, data all in the same architecture. A separate bus transfer for each of them. 



**e)**

Latency hiding: impacts both space and time. 

Space: Assume that the next instruction to be called will be in close vicinity to the current instruction being executed

Time: Instructions are assumed to be used in the future. They are cached. In other words, cache is a part of this concept. 



#### Oppg 2

**a)**

This is a full adder. It is comprised of two half-adders. A full adder combines (adds) two inputs. 

**b)**

RAM1 & RAM2: 8000-FFFF

ROM1 & ROM2: 0000-00FF. 

No overlaps. Free space from (00FF-8000) = [0100-7FFF] 



**c)**

Equations: 

D0 = X AND NOT(Q0)

D1 = X AND (Q0 XOR Q2) 

| x=0  | x=0  | x=1  | x=1  |
| ---- | ---- | ---- | ---- |
| D0   | D1   | D0   | D1   |
| 0    | 0    | 1    | 0    |
| 0    | 1    | 1    | 1    |
| 1    | 0    | 0    | 1    |
| 1    | 1    | 0    | 0    |



**d)**

Nothing! X must be true anyway





#### Oppg 3

**a)**

The B-bus decoder reduces the number of bits in each microinstruction. (This is viable because at most one register can be put on the B-bus concurrently). The same prerequisite is not true for the C-bus, as separate bits can update the C-bus at the same time. 



**b)**

// Move A from TOS to H;

>  ALU: 011000, 	C: 1 0000 0000 (H), 					B: 0111(TOS)

// A OR B

>  ALU: 011100, 	C. 1 0000 0000 (H), 					B: 0101 (LV)

// NOT A

>  ALU: 011010, 	C: 1 0000 0010 (H and MDR),   B: 0



**c)**

**0A3** ALU: B, 			 C: LV 	B: MDR

**0A4** ALU: A AND B, C: LV 	 B: LV

**0A5** ALU: A			  C: MDR  B: 0



**1A5** ALU: B+1          C: LV  	B: LV

**1A6** ALU: B			  C: MDR  B: LV

**1A8** ALU: 0 			 C: 0 		B: 0 	MEM: READ



LV = MDR = AAAA AAAA

LV = AAAA AAAA AND 5555 5555 = 0 (This is zero because A=1010 and 5= 0101. 0 AND 1 = 0 and 1 AND 0 = 0)

LV = LV + 1 = 0 + 1 = 1

**MDR = LV = 1**



#### Oppg 4

**a)**

[Look at fig.6] -> Yes, every instruction has length 32 bits. 



**b)**

MOVC. Given by the *Constant*-field. (Operand is included)







## Eksamen 2017 Kont

#### Oppg 1

**a)**

i) D vil få bussen først, siden den stenger "out"en sin, så da vil ikke C få før D er ferdig. Såkalt *Daisy Chaining*

ii) Desentralisert, siden det ikke er gitt "ordre" ovenfra



**b)**

Aksestid: Opp

Kap: Opp

Pris: Ned



**c)**

Cache reduserer aksesstiden. 

*Mean access time*: C + (1 - h)*m



**d)**

*Interrupt vector*: et event skjer. Prosessoren må håndtere det som skjer. Typ: noen trykker på en knapp e.l. Peker til en adresse med interrupt code. 



**e)**

I1: ADD R1, R2, R3; ( R1 = R1 + R3, Rn Register nummer)

I2: SUB R4, R1, R5;(R4 = R1 + R5)

I3:AND R0, R7, R9; (R0 = R7 and R9

En *true dependence* er f.eks write -> read. Her er bare R1 0 dersom den ikke er satt av l1. (RAW, WAR, WAW)

[Er en del skrivefeil i LF og eksamen]





#### Oppg 2

**a)**

Dette vil ta to klokkeperioder. Den må først invertere B (toerkomplement) og så legge til 1. 



**b)**

i) Er figur 3 & 4 kompatible? Ja, de har ikke overlappende adresseområder. 

ii) Ja, siden de kompatible 



**c)**

i) 



| Current state | Nxt 00 | Nxt 01 | Nxt 10 | Nxt 11 | Output A | Output MR | Output MW |
| ------------- | ------ | ------ | ------ | ------ | -------- | --------- | --------- |
| Idle          | Idle   | MW     | MR     | ALU    | 0        | 0         | 0         |
| ALU           | Idle   | Idle   | Idle   | Idle   | 1        | 0         | 0         |
| MW            | Wait   | Wait   | Wait   | Wait   | 0        | 0         | 1         |
| MR            | Wait   | Wait   | Wait   | Wait   | 0        | 1         | 0         |
| Wait          | Idle   | Idle   | Idle   | Idle   | 0        | 0         | 0         |

 

ii) 

Minimum antall flip-flops: 3.

Man trenger 3 bits for å avgjøre hvor man skal. For å dekke alle mulige tilstander. 

[Trenger 3 bits for å kunne registrere 5 verdier]





#### Oppg 3

**a)**

Addr: Next adress (neste lokasjon)

J: Jam (flagg for null og negativt)

ALU: Hvilken aritmetisk/logisk operasjon vi skal gjøre

C: Hvor outputen fra ALU skal lagres/skrives til  

M: Memory control. Sier om du skal bruke read, write eller fetch 

B: Hva skal settes i B-slotten i ALU'en? Hva kommer fra B-Bussen? 



**c)**

Alle deltaene





#### Oppg 4

**a)**

Forskjellig lagring for data og instruksjoner. Separate busser for alle komponentene som er koblet til kontrollenheten. 



**b)**

Letni X68 bruker 0, 1, 2 og 3 adresseformat. register adreserings format, direct og immidiate



**c)**

Koden loopes 3 ganger. (Siden R12 blir dekrementert, og den har verien 3. Ved 0, settes flagget, og vi looper ikke mer.) 

R11 = 0x00 AA 00 FF





#### Oppg 5

**a)**

*mean access time* = c + (1 - h) * m, der C er cache access time, h er hit ratio og m er memory access time

Hva betyr hit-ratio: 80% av de addressene som du skal bruke ligger i cachen. 



**b)**

100 instruksjoner

Execute er bottleneck, med 15 ns. Det blir da: 100 * 15 ns = 1 500 ns for de 100 instruksjonene.

Det vil deretter ta 15 ns per klokkesykel henholdsvis fetch, decode, operand og writeback. Det blir da 

1 500 + (4*15) ns = **1 560 ns.** = 1,56 us.  



**c)**

106 * 6 ns = 636 ns 



**d)**

Nei, det er relatert til superskalare CPU'er. 
