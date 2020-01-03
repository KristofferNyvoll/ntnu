# TTM4100 Pensum



Kap 1: Computer Networks and the Internet

Kap 2: Application Layer (HTTP/FTP/SMTP) [Message]

Kap 3: Transport Layer (TCP/UDP)  [Segment]

Kap 4: Network Layer (IP/ICMP) [Datagram]

Kap 5: Link Layer and Local Area Networks (Ethernet, 802.11, Forwarding and routing) [Frame]

Kap 6: Wireless and Mobile Networks (802.11, WiFi, LTE, BT)

Kap 7: Multimedia and Networking

Kap 8: Security in Computer Networks 



## Kapittel 1 : Computer Networks and the Internet

#### Kapittel 1.1 : What is the Internet?

Endepunktene i et nettverk er koblet sammen av communication links og packet switches. For å ha tilgang til internett må endepunktene gjennom en ISP.  Endepunktene kommuniserer  ved å sende hverandre pakker (packets). Disse  pakkene må bruke protokoller for å fortelle hvor de skal. Den vanligste protokollkombinasjonen er TCP/IP.



The Internet is a computer network that interconnects hundreds of millions of computing devices. The devices conntected to the Internet is called *hosts* or *end-systems*. End systems are connected by a network of communication links and packet switches. Transmission rate is measured in bits/second. End systems access the Internet through ISPs, or **Internet Service Providers**. Two of the most important protocols are **TCP: Transmission Control Protocol and IP: Internet Protocol**. They control the sending and recieving of information on the internet. It's paramount that everyone agrees on these protocols, so this is where standards come in to play. **Internet standards** are developed by the Internet Engineering Task Force (IETF). They define the likes of TCP/IP, HTTP, and SMTP.



We can also describe the Internet as an infrastructure that provides services to applications. These applications include VoIP (Voice over IP), electronic mail, video streaming, social networks, peer-to-peer (p2p) file sharing, television over the internet, and so much more.  The applications are said to be **distributed applications**, since they involve multiple end systems. End systems attached to the internet provide an **Application Programming Interface (API)**. 

**Protocols** define the manner of which we communicate. We have an agreement on how to communicate, and to which we adhere. A protocol defines the format and the order of messages exchanged between two or more communicating entities, as well as the actions taken on the transmission and/or receipt of a message or other event. 

Most of the servers from which we recieve data resides in huge data centers. Hosts connects to the internet via the acess network - the network that physically connects a host to the edge router. 

Home Access: DSL, Cable, FTTH, Dial-up, and Satellite. **Digital subscriber line** is the most common types of broadband residential access together with **Cable**. 



#### Kapittel 1.2 : The Network Edge

Endepunktene, også kalt hosts, blir ofte delt inn i klienter  (clients) og tjenere (servers). Det finnes forskjellige måter klienter kan koble seg opp mot nettet. DSL, kabel og fiber står nevnt i boka. For å koble seg til nett på faste steder bruker klientene Ethernet eller WiFi (trådløs internett). 3G og LTE har mye lengre rekkevidde og benyttes derfor når klienten ikke er i nærheten av et fast punkt.

Physical media fall into two categories: guided (The waves are guided along a solid medium) and unguided (wireless transmission) media. 

**Twisted-Pair Copper Wire** is the cheapest and most commonly used transmission medium. A wire pair constututes a single communication link. UTP: Unshielded twisted pair. 

**Coaxial cable** consists of two copper conductors (like twisted pair), but they are concentric rather than parallel. Quite common in television systems. The transmitter shifts the digital signal to a specific frequency band, and the resulting analog signal is then sent to the receivers. Coaxial cable can be used as a guided shared medium. 

**Fiber Optics** conducts pulses of light, and are immune to electromagnetic interference. Great over long distances. 



#### Kapittel 1.3 : Packet Switching

Packet switches består stort sett av routers og link-layer switches. Det tar *L*/*R* sekunder å sende L bits over en link med overføringshastighet på R bits/sek. De fleste packet switches bruker **store-and-forward  transmission**, som vil si at de må motta hele pakken før de kan begynne å  sende den videre. Dette gir N*L/R som total transmission delay, der N er totalt antall koblinger, gitt N-1 routers.

I tillegg kan det komme ekstra forsinkelse ved at en pakke må vente på at forrige pakke er ferdig med å bli sendt. I mellomtiden blir pakken lagret i en output buffer. Denne typen forsinkelse, queuing delay, er  vanskelig å regne på og finnes ingen formel for som er pensum. Når en output queue (køen som skal sendes videre av en router) er full, skjer det pakketap (packet loss): Pakken blir forkastet og kommer ikke fram  til destinasjonen sin.

Når en pakke kommer til en router, slår routeren opp i en forwarding table for å finne ut av hvilken utgående forbindelse pakken burde sendes  videre på. Circuit switching fungerer på en annen måte. Her må senderen  «reservere» tilkoblingen. Dette brukes for eksempel med  hjemmetelefoner. Hverken packet eller circuit switching er 'best', men  passer til hvert sitt bruk.

![1558519812327](/home/kristoffer/.config/Typora/typora-user-images/1558519812327.png)

FDM: Frequency-division multiplexing or TDM: Time division multiplexing



#### Kapittel 1.4 : Delay, Loss and Throughput in Packet-Switched Networks

A packet starts in a host (the source), passes through a series of routers, and ends its journey in another host (the destination). The packet suffers delays at each node along the path. 

Det finnes forskjellige typer forsinkelser. **Total nodal delay** (den totale forsinkelsen) er summen av:

| Processing delay   | Tiden det tar for å undersøke pakkens header og finne ut hvor den skal sendes. |
| ------------------ | ------------------------------------------------------------ |
| Queueing delay     | Tiden det tar å vente på at andre pakker skal bli sendt ut på linken. |
| Transmission delay | Tiden det tar for å skyve pakken ut på linken (som er "veien" mellom nodene). (**L/R**) |
| Propagation delay  | Tiden det tar for å reise fra en node til den neste. (**d/s**) |

**Total end-to-end-delay** er tiden det tar fra start til slutt, altså veien gjennom alle ruterne. Denne delayen er:

![1558522728953](/home/kristoffer/.config/Typora/typora-user-images/1558522728953.png)



*I dette eksemplet er det N-1 rutere*. *Antar her at nettverket er uncongested slik at queueing delay er neglisjerbart*.

I en kobling med flere switcher mellom den, brukes transmisjonsforsinkelsen til flaskehalsen.

En viktig faktor som spiller inn på queuing delay er **traffic intensity**. Traffic intensity er forholdet *La/R* der *L* er bits, *a* er pakker per sekund og *R* er transmisjonsraten. Dersom *La/R > 1*  vil det komme flere pakker inn til køen enn køen klarer å sende videre,  og queuing delay vil raskt stige mot uendelig. Det er derfor ønskelig å  designe er nettverkssystem slik at traffic intensity aldri blir over 1.

**Instantaneous throughput** til enhver tid er raten man mottar en fil med akkurat der og da, målt i bits/sec. Dersom en fil består av *F* bits og det tar *T* sekunder å motta den så er **average throughput** *F/T* bits/sec.  



#### Kapittel 1.5 : Protocol Layers and Their Service Models

Nettverksprotokoller er delt inn i lag. Internettsprotokollen er delt inn i fem lag.

| **Navn**          | **Forklaring**                                               | **Eksempler**                            | **Informasjonsenhet** |
| ----------------- | ------------------------------------------------------------ | ---------------------------------------- | --------------------- |
| Application layer | Toppnivå-protokoller som direkte samhandler med programvare. | HTTP, SMTP, FTP, DNS                     | message               |
| Transport layer   | Sørger for end-to-end kommunikasjon.                         | TCP, UDP                                 | segment               |
| Network layer     | Fikser alt som ligger mellom hosts, eks. hvor en pakke skal sendes  videre for å komme til sin destinasjon. Dette er det øverste laget i en  router. | IP                                       | datagram              |
| Link Layer        | Protokoller for hvordan data skal legges over på det fysiske laget (flyttes fra en node til den neste). | Ethernet, 802.11b/g/n                    | frame                 |
| Physical layer    | Det fysiske, altså typen kabel eller antenne.                | Twisted-pair, Nettverksadapter, Fiber .. | bits                  |

Det finnes også andre protokollstakker, som for eksempel OSI (open-systems Interconnection)-modellen, som har syv lag. 



Security problems of the Internet include Malware (malicious stuff), botnet (host is enrolled in a network controlled by bad-guys), self-replicating (infects one host, and then seeks to spread), viruses (requires user interaction to infect the device) and worms (require noe user interaction). 

DoS: Denial of service renders a network/host/other infrastructure useless. Three categories: Vulnerability attack, bandwidth flooding (clogging) and connection flooding (establish a large number of open TCP connections. The host can become so bogged down that it stops accepting legitimate connections). 

DDoS: Distributed denial of service. 

## Kapittel 2 : Application Layer



#### Kapittel 2.1 : Principles of Network Applications

En prosess må kommunisere gjennom (minst) en socket. Hver socket er koblet til et portnummer som er unik for datamaskinen. Slik er det mulig  å vite hvilket program som skal motta pakker etter at de har kommet til  riktig IP adresse.

Hvilken transport layer protocol som brukes påvirker  overføringshastighet, beskyttelse mot pakketap, garanti for når neste  pakke har kommet og sikkerhet. TCP forsikrer at serveren finnes og at pakkene kommer i riktig rekkefølge og uten tap. UDP har verken garantier eller begrenset throughput.

I en P2P arkitektur er tjenestene uavhengig av servere, ettersom applikasjonen utnytter direkte kommunikasjon mellom hosts. Bittorrent bruker P2P.  Brukere ofrer engen båndbredde og maskinkraft for at applikasjonen skal kjøre. 

In the context of a communication session between a pair of processes, the process that initiates the communication is labeled as the client, whilst the process waiting to be contacted is labeled as the server. 

A process sends, and receives, messages through a software interface called a **socket**. 

In the internet, the host is identified by it **IP Adress**. 

If a protocol provides guaranteed data delivery service, it is said to provide **reliable data transfer**. 

Applications with bandwidth requirements are said to be **bandwidth-sensitive applications**. Their counterpart is the **elastic applications**.

**TCP Services ** include Connection oriented service(handshake -> TCP connection) and *Reliable data transfer service* (the process can rely on TCP to delivar all data in the proper order)

**UDP** is a lightweight transport protocol, providing minimal services. Requires noe handshake, and is an unreliable data transfer service. No guarantees. 



#### Kapittel 2.2 : The Web and HTTP

HyperText Transfer Protocol (HTTP) blir brukt for å overføre  informasjon om nettsider. Når klienten spør om en nettside, sender  serveren først HTML-filen, og andre objecter i hver sin pakke etterpå.  HTTP støtter cookies og web caching.

*Web cache* (aka Proxy server) er en nettverksentititet som kan besvare HTTP-forespørsler fra klienter. Den ser om den har objektene klienten ber om lokalt, og hvis ikke sendes en request til serveren og henter disse objektene. Den opererer altså som server og klient samtidig. Poenget med en web cache er å redusere responstiden for klienter. En web-cache blir gjerne kjøpt og installert av ISP-er for å redusere responstiden for sine kunder, men skolenettverk kan også la alle requestene til sine klienter gå via en web-cache. Årsaken til at dette vil gå fortere er gjerne at båndbredden er større mellom klient og cache enn ut mot nettet. 

HTTP støtter både persistent og non-persistent connections. I en persistent connection blir alle forespørsler og svar sendt over samme forbindelse. I en non-persistent connection må det opprettes en ny tilkobling til serveren for hver forespørsel. HTTP har persistent som standard. 

HTTP foresørsler har **request line** og **header lines**. Metodefeltet kan ha flere verdier, som eksempelvis: *GET, POST, HEAD, PUT og DELETE*. 

HTTP response messages have a status line, six header lines and an entity body. 

**Cookies** allow websites to keep track of users.

Gjennom bruk av **Content Distribution Networks (CDNs)** spiller Web caches en desto viktigere rolle for internettet. 

#### Kapittel 2.3: File Transfer (FTP)

File Transfer Protocol (FTP) brukes til å overføre filer på nett. Den bruker to TCP-forbindelser samtidig; en til til å sende data, og en tar seg av autorisering, endring av mapper på serveren og liknende. I motsetning til HTTP, må FTP vite om tilstanden til brukeren. 



#### Kapittel 2.4: Electronic Mail in the Internet

Mailsystemet på Internet består i all hovedsak av **user agents, mail servers og Simple Mail Transfer Protocol**. HTTP og SMTP har mange likheter, og brukes til å overføre filer. SMTP dytter filer ut, mens HTTP drar filer til seg. SMTP krever at alle meldinger er i et 7-bits ASCII format. 

**Post Office Protocol-Version3 (POP3)** er en populær mailaksessprotokoll. De overfører mail fra mottakers mailserver til mottakerens "user agent". Det er en veldig simpel protokoll.

**IMAP** er også en mailaksessprotokoll. Den løser et problem som POP3 ikke kan , nemlig at den tillater klienter og serveren å opprette mapper og flytte *messages*. IMAP er betraktelig mer avansert enn POP3. 



#### Kapittel 2.5: DNS

The **Domain name System (DNS)**  oversetter *hostnames* til IP-adresser. Det er en distribuert database som er implementert i et hierarki av DNS Servere. DNS er også en *application-layer* protokoll som tillater *hosts* å gjøre spørringer til databasen. 

DNS tilbyr et par andre tjenester i tillegg til å oversette, som blant annet **Host aliasing**, **Mail server aliasing** og **Load distribution**.

Vi kan åpenbart ikke ha EN DNS Server (hvis den krasjer, krasjer alt, for mye trafikk, må være gigantisk, vanskelig å holde oppdatert), så vi bruker et hierarki: 

![1558694321652](/home/kristoffer/.config/Typora/typora-user-images/1558694321652.png)

Det er tre klasser av DNS Servere: Root, Top-level og authoritative. 

**DNS Caching** reduserer ventetid ved å lagre relevant data i sitt lokale minne. 

DNS-*messages* er bygd opp som følger: *header section* på 12 bytes (har felter), *question section*, *answer section*, *authority section* og *additional section*.   



#### Kapittel 2.6: Peer-to-peer Applications

Alle applikasjoner som vi har diskuert til nå bruker en klient-server arkitektur. P2P bruker par av regelmessige tilkoblede *hosts*, aka *peers*. 

P2P brukes ofte til fildeling. **Distribusjonstiden** er tiden det tar å få en kopi av filen til alle N peers. 

![1558696001117](/home/kristoffer/.config/Typora/typora-user-images/1558696001117.png)



#### Kapittel 2.7: Socket protgramming

*"A socket is the door to the house (process)"*. Du kan programmere Sockets som benytter UDP og TCP. Se side 190-ish i boka. 



## Kapittel 3: Transport Layer

En kritisk funksjon til transportlaget er å utvide nettverkslagets leveringstjeneste mellom to *end systems* til et leveringssystem melom to applikasjonslags-prosesser som kjører på disse *end systemene*. 

#### Kapittel 3.1: Intro and Transport-layer services

Transportlagsprotokollen sørger for logisk kommunikasjon mellom prosesser som kjører på forskjellige *hosts*. Internettet tilgjengeliggjør to protokoller for applikasjonslaget. Det ene kalles **UDP** (User Datagram Protocol) som tilbyr tilkoblingsløse, *unreliable* tjenester, mens den andre er **TCP** (Transmission Control Protocol) som tilbyr en *reliable, connection-oriented service to the invoking application*.  

Uvidelsen fra host-til-host til prosess-til-prosess kalles **transport-layer multiplexing** og **demultiplexing**. TCP tilbyr reliable data transfer og congestion control, mens UDP ikke har noen garantier og er uregulert. En applikasjon som bruker UDP kan sende så mye den vil, så lenge den vil. 



#### Kapittel 3.2: Multiplexing and demultiplexing

Ved multiplexing legger man på en header i databitene som kommer fra sockets. Da kan man finne ut av hvilken socket segmentet skal til når den kommer frem til riktig host (demultiplexing). Ved UDP blir segmenter med forskjellig source eller port sendt til samme port, mens TCP sender dem til forskjellige sockets. 



The job of delivering the data in a transport-layer segment to the corect socket is called **demultiplexing**. The job of gathering data chunks at the source host from different sockets, encapsulating each data chunk with header information to create segments, and passing the segments to the network layer is called **multiplexing**. 



Checksum is used to verify that the UDP segment has arrived unchanged, that is, all bits are the same as when it departed from the source. 

Reliable data transfer protocol ensures that no bits are corrupted or lost, and that all are delivered in the order they were sent. Positive acknoledgements ("OK"). Negative acknowledgements ("Please repeat that"). Reliable data transfer protocols are based on retransmission called **ARQ** (Automatic Repeat reQuest) protocols. 



#### Kapittel 3.3: Connectionless transport: UDP

UDP legger til en **header** med source og destination port på segmentet. Det er (nesten) alt UDP gjør før den sender videre til nettverkslaget. Der får pakken en IP-header, og blir så sendt videre, uten garanti mot datatap. UDP headers tar mindre plass enn TCP (8 byte vs 20). 

UDP sender med en **checksum** på pakken. Det gjør det mulig å sjekke om pakken har blitt endret på. Checksummen bruker **enerkomplement** og fungerer på følgende måte: 

1) Summer sammen de tre 16-bits ord (source port, destination port, lengde) i segmentet.

2) Hvis det er overflyt (mer enn 16 bits) utføres end around carry, som vil si at man adderer overflyten med resultatet. 

3) Inverter alle bits

4) Når pakken mottas, summeres de 4 16-bit ord(tre som tidligere, siste er checksummen). Resultatet skal være 16 enere. 



#### Kapittel 3.4: Principles of reliable data transfer

**ARQ** protokollen er en måte å sjekke om den sendte informasjonen har blitt mottat riktig. For å oppnå dette, kreves tre ting: 

* **Error detection**. En måte å finne ut av om det har skjedd en bitfeil
* **Reciever feedback**. Muligheten til å sende tilbakemelding om pakken har blitt mottatt riktig. Det sendes en ACK når alt er bra, og NAK når det har skjedd en feil.
* **Retransmission**. Når det har skjedd en feil i sendingen av pakken, skal det være mulig å sende på nytt. 

Hvis avsenderen ikke har mottatt en ACK innenfor en viss tid, sendes den på nytt. Det er mulig å legge på et sequence number for å vite hvilke pakker som har blitt mttatt uten feil. 

* **Stop-and-wait-protocol**. Her sendes en pakke om gangen. Neste sendes når en ACK har blitt mottatt. Hvis en timeout skjer, sendes pakken på nytt. 

* **Pipelining**. Her økes intervallet for sekvensområdet og størrelsen på bufferen økes, så det er mulig å sende ut mange pakker samtidig. 

  * **Go-Back-N**. Her er det en begrensning på antall pakker vi ikke har fått en ACK på innen tidsrammen. Disse pakkene kommer rett etter hverandre. Med en begrensning på 8, vil ikke pakke 11 bli sendt før vi har fått ACK på pakkene 0-3. 

  * **Selective repeat**. Også her er det begrensning på pakker vi ikke har fått ACK på innen tidsrammen. Forskjellen fra Go-Back-N, er at mottakeren sender en ACK for alle pakker, og avsender sender bare pakkene som den ikke har fått en ACK tilbake for på nytt. 		 

![1559036087731](/home/kristoffer/.config/Typora/typora-user-images/1559036087731.png)

#### Kapittel 3.5: Connection-oriented transport: TCP

TCP har flere egenskaper:

* Full-duplex service: Hvis det er en forbindelse mellom prosess A på en host og prosess B på en annen host, kan kommunikasjon gå begge veier samtidig. 
* Point to point: Det finnes bare en sender og mottaker i hver fobindelse.
* Three-way handshake: For å få en tilkobling, sender A et bestemt segment, B svarer med et annet bestemt segment, hvorpå A svarer med et tredje segment. 
* Hvis en fil, som f.eks et bilde, er større enn maksimum segment size (MSS), blir den delt opp i flere segmenter. 
* TCP bruker en slags mellomting mellom go-back-n og selective repeat. 



Sekvensnummerne i TCP-headeren øker med størrelsen på den forrige pakken. ACK-nummeret som blir sendt tilbake, er sekvensnummeret til neste pakke som mottakeren forventer å få. 

TCP har bare en timer. Den tar tiden på den siste pakken som det ikke har blitt mottatt noen ACK på ennå. 

Three way handshake fungerer ved at klienten først sender en pakke (SYN-segmentet) med SYN biten satt til 1. I tillegg sender klienten med et tilfeldig generert segmentnummer av sikkerhetsgrunner. Serveren åpner en buffer, svarer med en ACK og sender en pakke (SYNACK) med SYN-biten satt til 1. 

For å avslutte en TCP-tilkobling sender klienten  en pakke med FIN-biten satt til 1. Deretter venter klienten (FIN_WAIT-1) på en ACK fra serveren. Så venter klienten (FIN-WAIT-2) på en FIN-pakke fra serveren. Klienten sender så en ACK og går inn i TIME-WAIT, for å sende ACK på nytt hvis det trengs. Hvis den timer ut, er forbindelsen avsluttet. 



#### Kapittel 3.6: Congestion control

Tap av transportlagsegemnter (congestion) skjer når for mange kilder sender for mye data på en gang. Ruteren kan ikke sende mer enn en pakke videre om gangen, og har begrenset med buffer. I tillegg kan pakker bli sendt flere ganger, som skaper trafikk for ruteren. Vi skiller mellom to typer congestion control: 

* **End-to-end congestion control**: Transportlagene i endesystemene må ta seg av congestion control fordi nettverkslaget ikke støtter det. Nettverkslaget informerer ikke en gang om congestion. TCP/IP ser i denne situasjonen. 
* **Network-assisted congestion control**: Rutere kan sende tilbakemelding om congestion, f.eks ved å sende en choke packet. 



#### Kapittel 3.7: TCP congestion control

Siden rutere ikke forteller TCP hvor ofte pakker bør sendes, prøver TCP å finne ut av det selv. TCP starter med maksgrense på antall pakker den ikke har fått en ACK fra. Hvis TCP merker en timeout eller trippelACK, bør grensen settes ned. Hvis dette ikke skjer, kan TCP prøve å øke grensen. Hvor mye grenses kan økes finner TCP ut av ved å se på tiden det tar å motta ACKene. Boka nevner tre algoritmer for å finne ut av dette: *Slow start, congestion avoidance og fast recovery*. TCP bruker alle tre. 

![1559037837671](/home/kristoffer/.config/Typora/typora-user-images/1559037837671.png)





# Kapittel 4: Network Layer 

#### Kapittel 4.1: Introduction

For å flytte pakker fra senderen til mottaker, benytter nettverkslaget seg av to viktige funksjoner. **Forwarding**: når en ruter får en ACK, må den sendes videre til neste ruter på veien til mottakeren. **Routing**: Refererer til den omfattende prosessen som avgjør ende-til-ende-ruter i nettverket for pakker fra kilde til destinasjon. 



#### Kapittel 4.3: What's inside a router?

En moderne ruter er vanligvis satt sammen av 4 hoveddeler:

1.  **Input ports**. Her skjer oppslag i forwardingtabellen og linklayerfunksjoner. I tillegg er dette fysiske porter på ruteren. Hver port har en kopi av forwardingtabellen, fordi det er mer effektivt enn å gjøre mange oppsalg i prosessoren. 
2. **Switching fabric**. Denne delen kobler input-, og outputporter sammen. Switchinig skjer enten i minnet, på bus eller crossbar. 
3. **Output ports**. Fysisk utgang.
4. **Routing prosessor**. Oppdaterer routing tabellen og gjør andre nettverksfunksjoner som ikke er pensum

Three Switching techniques:

![1559068005677](/home/kristoffer/.config/Typora/typora-user-images/1559068005677.png)



Routers have memory storing the packets coming from the input. If the queue overflows, **packet loss** occurs. A consequence of the output port queuing is that a **packet scheduler** must choose which queued packet to transmit. Scheduling plays a huge role in the **quality-of-service** guarantees. 

#### Kapittel 4.4: The Internet Protocol (IP): Forwarding and addressing in the internet



![1559070202629](/home/kristoffer/.config/Typora/typora-user-images/1559070202629.png)

A **fragment** is created when a router receives an IP datagram with a larger length than the outgoing liks MTU (maximum transmission unit). The router then fragments the IP datagram into two or more smaller IP datagrams, referred to as fragments. 

![1559072258765](/home/kristoffer/.config/Typora/typora-user-images/1559072258765.png)

**IPv4 addressing**: the boundary between the host and the physical link is called an **interface**. 

The internets address assignement strategy is known as **Classless Interdomain Routing (CIDR)**. 

Datagrammene som kommer til ruteren blir splittet opp og satt sammen igjen i ruteren i den andre enden. Alle inputporter til en ruter danner et subnet. IP adressene til subnettet er et subnet mask. For eksempel 223.1.1.0/24, hvor de 24 første (av 32) bit er fastsatt, og definerer **subnettet**. Alle IPer i dette subnettet har adressen 233.1.1.xxx. ISPer deler ut IPadresser. Maskiner som ikke er servere trenger ikke fast IP, så de blir tildelt en IP ved å bruke en dynamic host configuration protocol (DHCP).

**Network address allocation (NAT)** manages IP addresses in SOHO (Small office, home office) subnets.

A problem occurs when datagrams arriving at the NAT router from ,for example, the WAN have the same destination IP address, then how does which internal host to forward the datagram to. The solution is the **NAT translation table** at the NAT router. 

**Universal Plug and Play (UPnP)** usually provides NAT traversal (which allows the internal hosts of the NAT-router to work as servers, i.e. for P2P). UPnP discovers and configures a nearby NAT. 

**Internet Control Message Protocol (ICMP)** is used by hosts and routers to communicate network-layer infromation to each other. Typically used for error reporting. 

As a reaction to much of the allocated IP address space of IPv4 being used up, **IPv6** was specified. It has space for 128 bits, instead of 32. 

 ![1559074271696](/home/kristoffer/.config/Typora/typora-user-images/1559074271696.png)





#### <!--Kapittel 4.5: Routing Algorithms (Ikke pensum lmao 8)--> 

<!--Routing algorithms er algoritmer som prøver å finne raskest vei mellom endepunktene. DIsse algoritmene kan deles inn på forskjellige måter:-->

* <!--Global routing algorithms (aka link-state (LS) algorithms) har oversikt over hele nettverket, og beregnet korteste vei fra A til B.-->
* <!--Decentralized routing algorithms har ikke oversikt over hele nettverket. I bruke kommuniserer naboer med hverandre og kartlegger korteste vei videre.--> 

<!--En annen måte å dele inn bredt på er:-->

* <!--Static routing algorithms router sakte over tid og er gjerne et resultat av menneskers "fikling" (eks en sysadmin som endrer en forwarding table)-->
* <!--Dynamic routing algorithms endrer routingveier med trafikk og topologiforandring. En dynamisk routing algoritme kan kjøres priodisk eller i direkte respons til forandringer. De er responsive til forandring, men kan oftere forårsake problemer som routing loops og osillasjon i routing.--> 

<!--Algoritmer som tar hensyn til trafikkbelastning kalles **load-sensitive**.-->

<!--Nettverk der alle kostnader er kjent blir ofte referert til som link-state algoritmer. Problemet som skal løses da er en variant av en-tl-en kortest vei , og dermed kan for eksempel Djikstras algoritme benyttes. I tilfeller der ruteren ikke har oversikt over hele nettet, brukes distance-vector routing protokollen (DV algoritme). En til alle noder kan løses med for eksempel Bellman-Ford algoritmen.--> 



# Kapittel 5 : Link layer and LAN

**LAN = Local area networks**. 

#### Kapittel 5.1: Introduction to the Link Layer

Når vi snakker om datalink-laget, blir alle hosts, rutere, switches og WiFi-aksesspunkter kalt noder. Mellom disse nodene går kommunikasjonsstier, links. En link går mellom noder, uten en annen node mellom dem. Linklaget er vanligvis implementert i hardware. Forskjellige protokoller i linklaget har implementert forskjellige tjenester. Noen av disse er:

* **Frame**. En "ramme" på dataene. Har flere formater, men alltid et datafelt for datagrammet og minst en header. Format spesifiseres av protokollen.
* **Framing**. Å legge på linklag-spesifikk data på nettverkspakken, slik at det blir en frame. 
* **Link access:** MAC-protokollen (medium access control) spesifiserer når det er mulig å sende en frame over linken. Dette er ikke et problem før flere noder sender over samme link. 
* **Reliable delivery**: En garanti for at nettverkslag-datagrammer kommer over linken uten tap. Dette blir ofte brukt av trådløse linklager
* **Error detection and correction:** Muligheten til å finne og rette opp feil i frames. 



#### Kapittel 5.2: Error detection and -correction techniques

Feil blir ikke alltid oppdaget. Dette delakpitlet dekker noen måter feil blir opdaget i linklaget.

* **Parity checks**. I tillegg til pakken blir det sendt en ekstra bit, slik at det finnes et odde eller partall antall enere. Denne metoden oppdager bare feil hvis det har skjedd i et odde antall bits. 
* **Two-dimensional parity**. Dataen som blir sendt er delt opp i rader og kolonner. Det blir sendt parity bits for alle rader og kolonner, i tillegg til en bit for summen av dem. Dette tillater også å rette opp hvis det bare har skjedd en feil. 
* **Cyclic redundancy check codes.** Sender og mottaker avtaler først et tall, G. fFor hver D antall bits legges det til r bits, R, slik at (D*2^r)/G = R.

#### Kapittel 5.3: Multiple access links and protocols

Det finnes to typer links. En point-to-point link har en sender og en mottaker. En broadcast link, derimot, kan ha flere noder. Dette kan gjøre det vanskelig å snakke med flere noder samtidig. Multiple accsess protocols definerer hvordan nodene skal oppføre seg. Disse protokollene er delt inn i tre kategorier: 

* **Channel partitioning protocols.** Alle noder får tildelt time slots hvor de kan sende pakker. 
  * **Time-division multiplexing(TDM)**. Tiden er delt inn i time frames, som har en time slot til hver node. Maksimal overføringshastighet for en node er *maks hastighet i kanalen*/*antall noder*
  * **Frequency-division multiplexing (FDM)**. Fungerer som TDM, men alle noder fpr tildelt en egen frekvens, derav navnet. 
  * **Code-division multiple access(CDMA)**. Deler ut en kode til hver node.

* **Random access protocols.** Nodene sender pakker på maksimal hastighet. Når det skjer en kollisjon sender pakken på nytt.
  * **Slotted ALOHA**. Tiden er delt inn i slots, hver stor nok til å overføre en frame. Når en node vil overføre noe, venter den til en ny frame starter. Hvis det skjer en kollisjon, blir alle noder informert før framen er over. For hver frame etter en kollisjon, har noden en sannsynlighet *p* for å prøve å sende pakken på nytt. 
  * **ALOHA**. Fungerer på samme måte som slotted ALOHA, bortsett fra at det ikke er synkronisering av slots. Det vil si at frames kan delvis overlappe, og sannsynligheten for kollisjon er større. 
  * **Carrier sense multiple access (CSMA)**. Noder sender ikke før de har spurt om noen andre noder sender. Likevel kan det skje kollisjoner, på grunn av propagation delay. 
  * **Carrier sense multiple access with collision detection(CSMA/CD)**. Forsøker å sende. Hvis det blir kollisjon avbrytes sending, og man venter. Bruker exponential backoff algoritmen for å bestemme ventetiden før en pakke sendes på nytt etter kollisjon. Intervallet som den tilfeldige ventetiden velges fra økes eksponensielt. 
* **Taking-turns protocols**. Ingenting sender med mindre noden får beskjed om at det er dens tur til å sende pakker. 
  * **Polling protocol**. En master node sier ifra når en annen node kan sende et bestemt antall frames.
  * **Token-passing protocol**. Ingen master node. En node sender makset bestemt antall pakker, så gi den beskjed til neste node at det er dens tur. 



#### Kapittel 5.4: Switched Local Area Networks

.. er nettverk som er koblet sammen ved hjelp av svitsjer. For å vite hvor i linklaget en pakke skal, er det inkludert en adresse i dataen i linklaget, MAC adressen. Dette er ikke adressen til en maskin, men til nettverksadapteren. 

Address Resolution Protocol (ARP) oversetter mellom IP- og MAC-adresser. Hosts og rutere har en ARP tabell i minnet, som kan oversette melom IP og MAC. I tablellen finnes også en time-to-live (TTL) verdi. Når denne går ut, slettes innlegget i tabellen. 





# Kapittel 6: Wireless and mobile networks

Forskjeller mellom wired og wireless networks:

* Et trådløst nettverk bytter ut ethernetkortene med NIC kort (network interface controller) som bruker elektromagnetisk stråling for å kommunisere. I stedet for en switch har vi et access point. 
* I et trådløst nett kan man oppleve større fall i **Signalstyrke** fra access pointet, enn signalet fra en switch i et tradisjonelt nettverk. Signalstyrken reduseres ved å passere gjennom materie og selv i åpent rom. 
* Radiokilder som overfører signaler i samme frekvensområder kan **forstyrre signalene til nettverket.** Dersom to trådløse nettverk opererer på den vanlige frekvensen 2.4 GHz kan man anta at det elektromagnetiske støyet vil ødelegge ytelsen til begge kildene. 
* **Multipath propagation** oppstår når signaler for samme prosess kommer frem til destinasjonen fordi de for eksempel hopper rundt på objekter, dette fører til at forstyrrelse av signalet kommer frem til mottakeren. 

#### Kapittel 6.1: Introduction

Trådløse nettverk består av trådløse hosts (laptop, mobil), trådløse links og basestasjoner(rutere, basestasjoner til mobilnett). 



#### Kapittel 6.2: Wireless links and network characteristics code division multiple access (CDMA)

... er en *channel partitioning protocol* og er mye brukt i trådløse nettverk og mobile nettverk. I CDMA er hver bit som blir sendt *encoded* ved å gange biten med et signal (koden) som forandrer seg i svært høy rate (kalt *chipping rate*). 



#### Kapittel 6.3: WiFi: 802.11 Wireless LANs

Fire standarer: 802.11 b/a/g/n. De operer på ulike frekvenser og har ulike hastigheter -b går til 11 Mbps, a og g til 54 Mbps mens n kan nå 600 Mbps. Forskjellen mellom n og de andre skyldes bruken av to eller flere antenner både på sender og mottaker-siden. De mottar og sender ulike signaler. Dette kalles *multiple-input multiple-output* (MIMO).

Standarden er hovedsakelig bygd på arkitekturen *basic service set* (BSS). En BSS har en basestasjon kalt access point (AP). I hjemmenettverk er det vanlig at ruter og AP er samme enhet. 802.11 bruker en random access protocol CSMA *with collision avoidance* (CSMA/CA).

Navnet på et trådløst nettverkspunkt kalles *Service set identifier* (SSID). AP har også en kanal, dvs. en kanal innad i frekvensområdet i standarden. Det er 11 mulige kanaler. De overlapper. To kanaler overlapper ikke dersom de er adskilt med fire kanaler eller mer (eks. kanal 6 og 11 overlapper ikke). 

Når man er *tilkoblet* et nettverk er man i praksis *assosiert* med et nettverk. 

Av standarden sender AP ut *beacon frames* med sitt SSID og MAC-adresse slik at man kan assosiere seg (koble seg til) dem. Når enheten lytter på dette kalles det *passive scanning*. *Active scanning* er når enheten broadcaster en *probe frame* til alle AP innenfor rekkevidde. APs svarer. Når man har velgt et AP sender enhet en DHCP *discovery message* til AP for å få en IP i subnettet. 



#### Kapittel 6.4: Cellular Internet Access

| 1G       | Støtte for tale. Analogt FDMA-systemarkitektur               |
| -------- | :----------------------------------------------------------- |
| **2G**   | Støtte for tale. Digital. Kombinerer FDM og TDM (radio)  som grensesnitt. Kanalen deles inn i F frekvensbånd, og i hvert enkelt bånd deles tiden opp i T slots. Kan da ha F - T samtidige samtaler. Base solution controller (BSC) allokerer BTS- radiokanal til hver kunde og finner mobiltelefoner (paging) ved oppringing. Mobile switching center (MSC) avgjør hvorvidt en enhet kan koble seg på nettverket (har betalt osv). |
| **2.5G** | 2G med GPRS (Generalized Packet Radio Service)               |
| **3G**   | Tale og data. Raskere. Tanken var å la 2G-nettverket være som det var , og legge til ekstra datafunksjonalitet |

**4G - Long-Term Evolution (LTE)**: Store fordeler fremfor 3G;

Evolved Packet Core (EPC) Både tale og data fraktes som datagram. Er best effort. Ettersom det ikke er ideelt med best effort for Voice-over-IP er det EPC sin oppgave å behandle nettverksressurser slik at man kan tilby høy kvalitet på tjenesten. EPC tillater flere typer radio access networks, inkludert 2G og 3G sine. 

**LTE Radio Access Network** bruker *frequency division multiplexing* og *timedivision multiplexing* på nedstrøms. Dette kalles *orthogonal frequency division multiplexing (OFDM)*. Dette betyr samelere og flere slots. Hver enhent får flere slots. Kan reallokere slots hvert millisekund. Bruker også MIMO-antenner på en ny måte. Tillater opptil 50 Mbps oppstrøm og 100 Mbps nedstrøm. 

Alternativ til LTE er WiMAX. Lite brukt.



# Kapittel 7: Multimedia Networking



#### Kapittel 7.1: Multimedia networking applications

En Multimedia networking application er enhver nettverksapplikasjon som benytter lyd eller video. Video bruker mer båndbredde enn lyd, som igjen bruker mer enn bilde. Fordi multimedia gjerne er stort, benyttes komprimering . Der finner to typer: **Spatial redundancy** (Komprimering innad i bilder. Bilder med f.eks. mye hvitt kan komprimeres mye) og **Temporal redundancy** (Komprimerng på bakgrunn av likhet mellom bilder. Ingen vits i å sende to helt identiske bilder). 



#### Kapittel 7.2: Streaming stored video

**UDP streaming**

Server sender video i en rate som matcher raten klienten ser på videoen i, eks klient konsumerer i 2 Mbps og hver UDP-pakke inneholder 8k bits med video - da vil serveren transmitte en pakke hvert 8k/2M = 4msec. Transportpakker som er spesielt laget for videooverføring er RTP (Real-Time Transport Protocol) eller noe tilsvarende. Videodata enkapsuleres i RTP-pakker før sending

Som med FTP vil man ofte ha en ekstra forbindelse for signaler for å pause og spole, altså en "kommandolinje". Til dette benyttes RTSP-protokollen (Real time streaming protocol). 

Ulemper med RTP/UDP:

1. Det er ikke garantert å gi kontinuerlig playback fordi båndbredde mellom server og klient er uforutsigbart. 
2. Nødvendig med en media control server for å prossessere klient-til-server interaktivitet.
3. Mange brannmurer som blokkerer UDP-trafikk.

**HTTP streaming**

HTTP server har videofilen. Klienten når den ved å benytte en URL til den, og etablerer en TCP-forbindelse med HTTP GET request. Serveren sender video i en HTTP response så raskt som TCP congestion og flow control tillater. Avspiller henter nye frames fra application buffer. De aller fleste streamingtjenester bruker HTTP streaming, inkl. Youtube og netflix. 

**Adaptive HTTP streaming and DASH**

HTTP streaming kommer litt til kort, bla. med at det bare har en versjon av videoen uavhengig av båndbredde. Med *Dynamic Adaptive Streaming over HTTP* (DASH) løser man dette problemet. 

Video er "encoded" til flere versjoner. URL til hver enkelt versjon ligger i en manifest-fil på serveren. Dette er det første klienten requester. Klienten laster ned en chunk av gangen og måler båndbredde og velger neste chunk med en *rate determination* algoritme. Er båndbredden lav, vil den velge en chunk fra den versjonen med lavere kvalitet. 

**Content distribution networks**

Det er tre problemer med å bygge et enormt datasenter for all video man skal streame:

1. Hvis klienten er langt fra datasenteret vil data gå via mange linker og mange ISPer, og hvis en av disse har lavere throughput enn det som er nødvendig, blir kvaliteten redusert.
2. Populære videoer vil bli sendt gjentatte ganger over det samme nettverket, noe som er bortkastet. 
3. Ett datasenter - ett *point of failure*. Går senteret eller en av linkene til senteret ned, så er ikke noe innhold tilgjengelig lenger. 

Som følge av dette bruker alle store innholdsleverandører et **Content Distribution Network (CDN)**. Servere flere steder i verden lagrer videoene og annen type data, også forsøker man å peke hver klient til en passende CDN-plassering. CDNs er organiserte web caches. 

Alternativt kan man ha en **private CDN** hvor en tredjeparts CDN distribuerer ditt innhold og andres. Netflix og Hulu bruker for eksempel Akamai's CDN for sitt innhold. 

Når man plassserer locations ut i et CDN kan det gjøres på to måter:

* **Enter deep** *Enter deep into the access networks of ISPs*. Dette gjøres ved å sette clustere (grupper) av serverehos access ISPs over hele verden. Målet er å komme så nær brukeren som mulig, og senke antall linker og rutere mellom klient og CDN cluster. Vanskelig å vedlikeholde. 
* **Bring home**. *Bring the ISPs home*. Dette gjøres ved å bygge store clusters, men et lavere antall. Binder clusters sammen med private høyhastighets nettverk. Enklere å vedlikeholde, kan gi høyere forsinkelse og mindre throughput. 

Det finnes flere strategier for å velge ut hvilken cluster man skal laste ned innhold fra. Ulike strategier er f.eks. å velge den som er geografisk nærmest, ta real-time målinger av delay og tap mellom cluster og klient og velge den beste, bruke allerede pågående tilkoblinger mellom cluster og klienter og se på deres tidsforsinkelser eller bruke IP anycast som kobler en klient til en forhåndsbestemt cluster ved bruk av klientens IP adresse. 



#### Kapittel 7.3: Voice-Over-IP

VoIP er best effort.

Kan tolerere pakketap mellom 1 og 20 prosent. Forsinkelse under 150 msec merkes ikke. Mellom 150 og 400 msec er ikke ideelt, men akseptabelt. Mer enn 400 msec kan ødelegge for interaktiviteten og flyten. 

Fordi forsinkelse variere kan tiden det tar fra en pakke er generert til den mottas og leses variere. Dette fenomenet kalles *packet jitter*, og man har måter å håndtere det. Det gjøres stort sett ved å sende et timestamp før hver chhunk, samt forsinke avspillingen av chunks hos mottaker. 



## Kapittel 8: Security in Computer Networks



#### Kapittel 8.1: What is network security?

Sikker kommunikasjon må ha følgende:

**Confidentiality**. Bare senderen og mottakeren skal kunne tolke mendingen som sendes, så den må være kryptert.

**Message integrity**. Melding må ikke endres underveis i sendingen.

**End-point authentication**. Mottakeren skal vite hvem meldingen kommer fra og senderen skal vite at meldingen kommer frem til rett sted.

**Operational security**. Nettverk må være beskyttet mot angrep utenfra. 



#### Kapittel 8.2: Principles of Cryptography

Kryptografiteknikker og algoritmer sørger for at meldingene blir kryptert mellom sender o gmottaker slik at det kun er disse to som kan tolke meldingen. 

###### Symmetric key cryptography

Flere algoritmer har blitt utviklet for å kryptere tekst der sender og mottaker deler en hemmelig nøkkel. Eksempler på algoritmer er:

**Caesar cipher**. Hver bokstav blir byttet ut med den k neste bokstaven i alfabetet. 

**Monoalphabetic cipher**. Hver bokstav blir byttet ut med en annen, men hvilken bokstav dette er, er tilfeldig. I dette tilfellet har sender og mottaker hver sin kopi av denne mappingen fra en bokstav til en annen. 

**Polyalphabetic cipher**. Flere polyalphabetic cipher-algoritmer brukes på meldingen der en spesifikk cipher er brukt til å kryptere en bokstav på en gitt posisjon i plaintext-meldingen. 



###### Block ciphers

Block cipher-algoritmer brukes i dagens internett, til bl.a. å beskytte epost, TCP tilkoblinger og network-layer transport. Ideen er at hver melding blir delt opp i blokker på k bits også krypteres hver blokk uavhengig av de andre. Dette gir (2k)! mulige mappinger og er derfor vanskelig å dekryptere uten nøkkelen. **Cipher block chaining (CBC)**: Sender en tilfeldig verdi med første melding og bruker denne til å kryptere de resterende blokkene. Den første verdien skrives *c(0)* og videre kryptering skjer med formelen *c(i) = Ks(m(i) XOR c(i-1))*.  



###### Public key encryption

I public key encryption krypteres meldingen med en public key K+ men må dekrypteres med en hemmelig nøkkel K- som bare mottakeren (eller senderen, men ikke begge) har tilgang til. Dekrypteringen skjer med funksjonen K-(K+(m)) = m. Et problem med public key encryption er at ikke har en automatisk end-point authorization som du har med symmetric key encryption. 



#### Kapittel 8.3: Message integrity and digital signatures

En mottaker må kunne være sikker på at en mottatt melding faktisk er sendt av den som er oppgitt som sender (og ikke er endret underveis i sendeingen).

##### Cryptographic Hash Functions

En hashfunksjon tar en input m og regner ut en string av gitt størrelse H(m), kjent som en hash. En kryptografisk hashfunksjon må tilfredstille følgende krav:

*  It is computationally unfeasible to find two messages x and y such that H(x) = H(y). 

To vanlig hashfunksjoner som har blitt mye brukt er MD5 (128 bits hash) og SHA-1 (160 bits hash). Begge har blitt knekt, så ingen ansees som trygge i dag. Den nye standaren er SHA-256 , SHA-512, osv. 



##### Message Authentication Code (MAC)

Message integrity kan oppnås ved å sende en melding sammen med en hash, H(m). For å være sikker på at det faktisk er senderen (og ikke en inntrenger) som har sendt meldingen, kan man bruke en hemmelig string s som bare sender og mottaker vet om til å regne ut en MAC (message authentication code), H(s+m), og sende denne sammen med meldingen (sender, (H(s+m))). Mottakeren vil da oppdage om noen uten kjennskap til s prøver å sende en melding utgitt som senderen. Den mest brukte MAC-en idag er HMAC. 



##### Digital Signatures

En digital signatur må være verifiserbar og umulig å forfalske. En måte å legge ved en digital signatur er ved å kryptere en melding eller hash vha. ens private key, K-(m) eller K-(H(m)). Siden H(m) som regel er mindre enn m vil sistnevnte måte å lage en digital signatur på kreve mindre regnekraft enn den første. For å forsikre seg om at det er oppgitte sender som har lagt ved den digitale signaturen kan man dekryptere meldingen ved å bruke senderens offentlige nøkkel K+. 



#### Kapittel 8.5: Securing E-Mail

Sikkerhet kan implementeres i alle de fire øverste protokollagene. For å sikre e-post-sending i applikasjonslaget brukes flere av de tidligere nevnte metodene. 



#### Kapittel 8.6: Securing TCP connections: TLS

For å sikre TCP-koblinger må vi et lag lengre ned enn for e-post. Den sikre typen TCP kalles **Transport Layer Security (TLS)**. TLS brukes f.eks. for å sikre at ingen får tilgang til betalingsinformasjon over internett og brukes av alle nettlesere og web-servere verden over. Det er TLS 1.1/1.2 som er i bruk når URL-en starter med https i stedet for den sedvanlige http. Secure Socket Layer (SSL) har vært i bruk tidligere, men blir nå annsett som sårbar. Det gjelder for tidligere versjoner av SSL fra 3.0. Det samme gjeder for TLS versjon 1.0. 



##### The big picture

En simplifisert utgave av SSL har tre faser: handshake, key derivation og data transfer. I handshake-fasen skjer tre ting:

1. EN TCP-tilkobling settes opp
2. Det sjekkes om tilkoblingen er med ønsket server, ved å motta serverens public key og sjekke dets CA-sertifikat. 
3. En Master key Secret (MS) kryptert med serverens public key sendes. 

Videre i key derivation-fasen genereres det 4 nye nøkler; en krypteringsnøkkel for data sendt fra A til B, en krypteringsnøkkel for data sendt fra B til A, en MAC-nøkkel for data sendt fra A til B og en MAC-nøkkel for data sendt fra B til A. Krypteringsnøklene brukes til å kryptere dataen som sendes (at dataen ikke endres underveis). 

I data transfer-fasen sendes dataen mellom partene. Dette skjer ved at SSL deler datastrømmen inn i records, legger til en MAC og krypterer record+MAC med en av krypteringsnøklene. For å stoppe inntrengere fra å omrokkere på dataenesom sendes bruker ogsp SSl sequence numbers, men i stedet for å legge dette direkte i headeren legges sekvensnummeret inn i beregningen av MAC. 



#### Kapittel 8.7: Network-layer security: IPSec and VPN

IPsec er en protokoll som gir sikkerhet til nettverkslaget. Ofte brukes IPsec til å lage såkalte VPNs, som er private nettverk som kjører over det åpne internettet. Dette gjøres ved at all trafikk som går over internett krypteres med IPsec før det sendes. Dersom VPN brukes på f.eks en arbeidsplass og to datamaskiner skal sende noe seg imellom, altså i samme subnett, så trengs det ikke at dataen krypteres. 



#### Kapittel 8.8: Securing Wireless LANs

Sikkerhetsmekanismer i 802.11 kalles samlet for **Wired Equivalent Privacy** og skal (som navnet antyder) gi en sikkerhet som ligner på den man finner i wired networks.

WEP krypterer data vha. CRC koder og ulike nøkler. WEP går for å ikke være sikkert lenger og standaren har blitt WPA, nærmere bestemt WPA2 Personal eller WPA2 Enterprise med AES. Det samme gjelder for Wi-Fi Protected Setup (WPS), som også bør unngås. 



#### Kapittel 8.9: Operational Security: Firewalls

En firewall isolerer en organisasjons nettverk fra det globale internett og passer på hvilke pakker som får slippe gjennom og ikke. En firewall har tre mål: 

1.  All trafikk til internett skal gå gjennom brannmuren.
2. Bare godkjent trafikk skal komme gjennom
3. Brannmuren skal være ugjennomtrengelig

**Traditional Packet Filters**: Se på hvert datagram for seg selv og bruker informasjonen det bringer med seg til å bestemme om det skal slippe gjennom eller ikke. Bestemmer som regel basert på IP adresser, protokoll-type, TCP flagg osv. 

**Stateful Packet filters**: Tracker TCP koblinger og gjør avgjørelser basert på disse. Dersom det kommer inn en pakke fra en sender det ikke er opprettet en tilkobling til slipper ikke denne pakken gjennom.

**Application gateway**: Lager gateways for bestemte applikasjoner og sørger for at all data til og fra denne applikasjonen kommer gjennom. 

