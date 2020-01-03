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