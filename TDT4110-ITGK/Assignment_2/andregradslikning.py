''' Ikke relevant atm
from math import sqrt

def regnUt():
    a = float(input("Oppgi en verdi for a: "))
    b = float(input("Oppgi en verdi for b: "))
    c = float(input("Oppgi en verdi for c: "))

    d = (b**2 - (4 * a * c))

    if d < 0:
        print("Det eksisterer to imaginære løsninger.")

    elif d == 0:
        print("Det eksisterer en reell løsning.")
        x1 = (-b)/(2*a)
        print("Nullpunkt for x= ", x1)

    elif d > 0:
        funksjonuttrykk = (a , "x^2", b, "x", c)
        print("Andregradslikningen", funksjonuttrykk, "har to reelle løsninger")
        x1 = ((-b) + sqrt(d))/(2*a)
        x2 = ((-b) - sqrt(d))/(2*a)
        print("Nullpunkt for x=" + str(round(x1, 2)) + "og x=" + str(round(x2, 2)))

    else:
        print("Her er det noe feil")

regnUt()

'''