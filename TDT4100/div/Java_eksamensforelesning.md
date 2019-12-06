# Innkapsling

Hindre direkte tilgang til felt for andre klasser.

`private`, `public` og `protected`. `final` og `static` brukes og. 



# Validering

Sikre at metoder kun brukes til deres formål. Må ha gyldig tilstand.

`checkxxIsValid()`

Utløse unntak: `throw new IllegalArgumentException("derp")`



# this

Refererer til objektet som kjører koden. Kan brukes som inputargument. Brukes ofte til å refrere til ntern tilstand.





# Modifikatorer

`public` - synlig for alle (Er denne metoden nyttig for andre klasser?) Variabler bør ikke være public

`protected` - synlig for klassen og underklassen (Brukes når det er snakk om arv. Underklassen kan da endre)

`private` - kun synlig for klassen (Metoden skal kun brukes i klassen)



`final` - umulig å endre verdien senere av en variabel. En final liste kan endres

`abstract` - brukes ved en abstrakt klasse

`static` - Brukes dersom vi ikke trenger å bruke intern tilstand i en metode. Eller når variablene er felles for alle objekter i en klasse



**Statiske metoder** kan ikke bruke nøkkelord som `this`



# Konstruktører

... lar oss instansiere klasser som objekt. En klasse kan ha flere konstruktører, gitt at der forskjellig(e) antall/type argumenter. Man kan kalle på andre metoder i klassen i en konstruktør.

Du kan instansiere objekter uten å ha definert en konstruktør. (Implisitt kontruktør)



# Diagrammer

**Klassediagram** - Reperesenterer objekter av forskjellige klasser og hvordan de er koblet sammen. Viser arv. "Hul" pilspiss betyr at underklassen arver av klassen som pilen peker på. 

**Objektdiagram** -  Representerer **objekter** og hvordan de er koblet sammen. Viser tilstand på ett spesifikt tidspunkt 

**Objekttilstandsdiagram** - Representerer objekter og hvordan de er koblet sammen, samt hvordan de endrer seg over tid. Viser hvilken verdi objektene har etter at man kaller på metodene. 

Stiplet pil: Metode. Heltrukken pil: Objekt. 





# Collections og Arrays

**Arrays** er som lister i Python, men immutable (kan ikke endre størrelse i etterkant)

Veldig primitiv i sammenligning med ArrayList. Kan konvertere fra array til arrayList på denne måten:

`String [] array = {"Honda", "Ford"};`

`List<String> list = Arrays.asList(array);` // Der "Arrays" er en klasse, ikke et objekt



**Collections og lister**

Vi bruker 

* Collection hvis vi ikke ønsker å aksessere indeksen.

  * Har metodene add(element), remove(element) og contains(element)

* List hvis vi ønsker å aksessere indeksen 

  * Legger til metodene get(index), romeve(index) og indexOf(element)

     

Så hvorfor bruker folk Collection? Det brukes dersom du ikke trenger index. Er god s. Ikke gi tilgang til mer enn nødvendig (sikkerhet)



Viktig om Collections: Kan ikke ha primitiver i listen. Dvs: ikke int, double, etc. Bruk wrapper-klassen (Integer, Double, etc)

# Hashmap

Samme prinsipp som Dictionaries i Python. Kan gjøre noen oppgaver enklere:

`HashMap<String, String> capitalCities = new HashMap<String, String>();`

`capitalCities.put("England", "London");`



# Varargs

Kan ta inn n antall objekter (...)

`Public Person(String name, int age, String ... hobbies){`

​	`this.name = name;`

​	`this.age = age;`

​	`this.hobbies = Arrays.asList(hobbies);`

`}`



# super

Samme ssom this, bare at det refererer til superklassen i stedet.

`super();`gir oss konstruktøren til superklassen, og kan ha inputparametre på samme måte som en kontruktør



# Grensesnitt / Interface

Som klasser - men du kan kun deklarere vaiabler og metoder uten å definere noe innhold. Variablene blir automatisk `static final`. 



# Abstrakte klasser

"Grensesnitt - med litt kode"

Kan ikke instansieres. Instansiering av en Animal-klasse:

`Animal dog = new Animal("flash", dog)`

Dersom `abstract`nevnes, må selve klassen være `abstract` 

Brukes gjerne når vi har objekter som det ikke gir mening at de står for seg selv.



# Iterator og Iterable

Iterable: Markerer klassen, slik at den kan itereres over på samme måte som en liste.

Iterator: Et objekt som lar oss iterere over en liste/collection. Du bruker implisitt en iterator når du bruker en foreach-løkke. 

Ofte har vi klasser med lister som skal implementere Iteable-grensesnittet



Hvis man skal implementere iterable må man implementere metoden `iterator()`

Hvis man skal implementere iterator må man implementere metodene `hasNext()` og `next()`





# Comparator og Comparable

Hva er forskjellen? 

* Comparable: Grensesnitt som klasser kan implementerefor å sammenligne objekter av denne typen 
* Comparator: Et grensesnitt som kan implementeres som en klasse. Denne klassen kan sammenligne to objekter av en annen type/klasse. 

**Comparator**

`public class AgeComparator implements Comparator<Student> {`

​	`public int compare(Student s1, Students2){`

​			`if (s1.getAge() == s2.getAge()){ return 0;}`

​			`else{` 

​				`return s1.getAge() < s2.getAge() ? -1 : 1;`

​				`}`

​	`}`

`}`



**Comparable** 

`class Movie implements Comparable<Movie>`

`{`

​	`private double rating;`

​	`private String name;`

`}`



`public int compareTo(Movie m){`

​	`return this.year - m.year;`

`}`



Bruker dette når vi skal sortere en liste. Hvis vi bruker *comparable* kan vi bare bruke Arrays.sort(object). Hvis vi bruker *comparator* må vi også definere hvilken comparator vi skal bruke: `Arrays.sort(object, comparator)`





# Funksjonelt grensesnitt

Et grensesnitt er funksjonelt dersom grensesnittet :

1) har kun én abstrakt metode og 

2) er ment å være primærfunksjonen til klassen som implementerer den.

Hvis bare 1) er oppfylt, er det tekninsk sett et funksjonelt grensesnitt. Dersom begge to er oppfylt, er det funksjonelt. 





# Lambda-uttrykk

Strengt tatt bare en annen måte å skrive funksjoner på. Slipper å definere typer. Det er implisitt. Bruker lambda-uttrykk for å instansiere funksjonelle grnsesnitt.



`input -> doSomethingWith(input);`

Er det samme som

`public Object funksjonsNavn(Object input){`

​	`// code`

​	`return doSomethingWith(input);`

`}`

Er nødvendig for å få A. Sparer masse tid på eksamen. 



# Streams

Er ikke en liste, men fungerer basically på samme måte som en spesiell type liste. (Samlebånd av objekter i rekkefølge). Brukes i forbindelse med funksjonelle grensesnitt.



**Gjør Office-øvingen!!!** 





# Observable - Observator

Detter er bare en teknikk, ikke noe som er innebygd i Java.

Teknikk for å kunne lytte på tilstander hos andre. 

Hva vi trenger: 

**Observert**

* Metode for å legge til lyttere
* Metode for å fjerne lyttere
* Metode for å si ifra til lyttere

**Obervatør**

* Metode for å ta imot informasjonen om endret tilstand





# I/O - lese og skrive til fil

Vi ønsker å kunne lagre tilstanden til et program uten at det må kjøres hele tiden eller ha all informasjonen i minnet.

`BufferedWriter wirter = new BufferedWriter(new FIleWriter(path));`

`writer.write("Heheh");`

`writer.close();`





# Unntak og Exceptions

Checked exceptions (må håndteres, med try/catch):

* IOException
* FileNotFoundException(Er bare en underklasse av IOException)

Unchecked exceptions:

* IllegalArgumentException
* IllegalStateException
* IndexOutOfBoundsException





# Testing / JUnit



Må kjenne til Try/Catch i tillegg til:

* `fail("Feilmelding")`
* `assertEquals(arg1, arg2)`
  * andre `assert`-metoder som er spesialversjoner av denne



# JavaFX

Du må kunne sammenhengen mellom FXML-elements  og JavaFX klasser, og sammenhengen mellom FXML og kontrollerklassen (navn, felt, metoder). 

**Obs!** Husk @FXML tags



https://www.ntnu.no/wiki/display/tdt4100/Interface+-+BinaryComputingIterator 

https://www.ntnu.no/wiki/pages/viewpage.action?pageId=135466518