# TDT 4140 Programvareutvikling



### Pensum

![image-20191216181738982](/home/kristoffer/.config/Typora/typora-user-images/image-20191216181738982.png)

Les denne ila juleferien: 

![image-20191216181718330](/home/kristoffer/.config/Typora/typora-user-images/image-20191216181718330.png)

## Product Backlogs

Kunden har en visjon for hvordan produktet skal være. For å realisere denne visjonen, bør det første steget være å lage en *product backlog* - en prioritert liste med krav/brukerhistorier og funksjonalitet. 

Enhver brukerhistorie kan ha følgende felt: 

- **ID** - auto-inkrementert, bare for å holde styr på dem (og knytte issues med commits)
- **Name** - kort, beskrivende navn (max 10 ord)
- **Initial estimate** - hvor mye tid vil det ta å implementere denne brukerhistorien? (S/M/L/XL)
- **How to demo** - *Som A, så ønsker jeg å kunne B, slik at C*. "Som bruker, så vil jeg lagre kassen min, slik at jeg kan gjenoppta økten neste dag"
- **Notes** - Kort info (om nødvendig)



I vår sammenheng er det tilstrekkelig å ha dette på gitlab, men kan også være en ide å ha det på en delt google drive/trello med kunden. 



![image-20191219135402672](/home/kristoffer/.config/Typora/typora-user-images/image-20191219135402672.png)

For å vurdere hvor lang tid noe kommer til å ta kan man skrive ned tall i en forhåndsdefinert intervall og *reveale* dem samtidig, og deretter diskutere seg frem til et svar. Dekomponer brukerhistoriene ned til oppgaver, og se hvor krevende de er å implementere. 



**Når er man ferdig?** Er det når koden er pushet og tester er skrevet? Er det når gruppa har gått gjennom og godkjent mergen? Skal den testes av andre brukere? 





**Hvordan innrede teamrommet**

Alle må kunne snakke sammen uten å reise seg fra pulten. 

Alle må kunne se tavlen der dere tracker sprinten

Dere må være "isolert", som i at dere må kunne snakke uten at andre hører på. 



**Hvordan gjøre daglige scrums**

Master sørger for at alle møter til rett tidspunkt. Alle har forberedt hva de har gjort siden sist. Dekomponer brukerhistorier og fordel ansvar på teammedlemmer. Sørg for at alle vet hva de skal gjøre. Hvis ingen vet hva de skal gjøre: be dem ta en kjapp demo (bedre kalt review). Da sier de " det kan vi ikke, fordi...", også har de selv påpekt hva som må gjøres. 



**Poenget med retrospectives**

> I'm in such a hurry cutting down the forest, I don't have time sharpening my saw!!!

Å finne ut av hva som (ikke) funker er vel så viktig som å komme seg rundt problemet. Det er viktig å ta lærdom fra sprintene, slik at hele laget kan jobbe mer effektivt de påfølgende sprintene. 



**Scrum og XP**

XP er mer spesifikt, og handler om hvordan man skal jobbe; det være seg parprogrammering, testdrevet programmering osv. Dette går hånd i hånd med scrum, som overordnet handler om hvprdan man skal optimalisere strukturen rundt hele teamet. For å gjøre scrum enklere, fjernet de XP-delen fra den originale ideen. De passer veldig godt sammen. 



**Hvordan gjøre tester**

Burde ikke ha en person som er "tester" (altså som rolle). Er for mye ansvar for en person. Ofte blir ting gjort ferdig samtidig, blir ujevn belastning. Burde fordele alle arbeidsoppgaver jevnt, slik at når flere har levert inn kode til testing, så kan den som har *ansvar* for testingen, ta seg av det h*n selv kan håndtere, mens resten blir delegert. Pass på at alle er enige på forhånd hva det vil si å være ferdig!