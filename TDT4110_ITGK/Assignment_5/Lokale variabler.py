# Kodesnutt 1:
def cupcakes():
    cupcakes = 24
    print("Jeg har laget", cupcakes, "cupcakes")


def cakes():
    print("Men jeg har bare bakt", cake, "kake")
    cake = 1


#cupcakes()
#cakes()
# Her ble verdien for cake satt etter at den ble referert.

# Kodesnutt 2:
def cupcakes():
    cupcake = 1
    print("Jeg har laget", cupcake, "cupcake")


def cakes():
    print("Og jeg har bakt", cupcake, "kake")


#cupcakes()
#cakes()
#Her er cupcake en lokal variabel som ikke eksiterer i cakes()

# Kodesnutt 3:
def cupcakes():
    cupcakes = 24
    print("Jeg har laget", cupcakes, "cupcakes")


def cakes():
    print("Men jeg har bare bakt", cake, "kake")


#cupcakes()
#Denne vil kjøre uten å krasje, det er fordi feilen eksister i cakes(), som ikke blir kalt. cake-variablen finnes ikke.

def divisjon(x,y):
    num = x//y
    print("Heltallsdivisjon av " + str(x) + " og " + str(y) + " er ",end="")
    return num
#print(divisjon(12,4))

def kvadrer(x):
    num = x ** 2
    print("Kvadratet til " + str(x) + " er ",end="")
    return num
#print(kvadrer(5))


'''
Oppgave c) 

Ja, verdien til sum avhenger av hvilken funksjon som kjører sist.
Kan være vanskelig å ha oversikt over hvilken verdi som korresponderer med variablen at any given time. 
Feilsøking blir vanskeligere og. 
Det kjører jo riktig hvis man har tunga rett i munnen, men det er en unødvendig risiko. 
'''