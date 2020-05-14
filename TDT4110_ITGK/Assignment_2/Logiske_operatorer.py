'''
Oppgave a)
Gitt x=3, y=8 og z= -3

1)  -5 < z and 5 > z        TRUE
2)  not y == 8              FAlSE
3)  x == 8 or y == 8        TRUE
4)  not (x <= 3 or y >=9)   FALSE
5)  not (x **2 == 8 and y - z == 5) or x + y == y - z   TRUE
'''

def b():
    print("Oppgi a og b, begge heltall i intervall <40,50> eller <70,90>:")
    a = int(input("Verdi for a: "))
    b = int(input("Verdi for b: "))

    if ((a > 70 and a < 90) or (a > 40 and a < 50)) and ((70 < b < 90 or (b > 40 and b < 50))):
        print("Tallene er begge i gyldige intervall ^u^")
    else:
        print("Minst ett av tallene er utenfor et gyldig intervall :(")

#b()

def c():
    print("Hei! Jeg har 10 pannekaker jeg ønsker å dele med deg ^u^")
    p = int(input("Hvor mange pannekaker ønsker du? "))

    if (0 > p or p > 10):
        print("Beklager, men det er nok ikke mulig")
    else:
        r = 10 - p
        print("Da blir det", p, "på deg og", r, "på meg :D")

#c()

def d():
    print("Hei! Jeg har 10 pannekaker jeg ønsker å dele med deg ^u^")
    p = int(input("Hvor mange pannekaker ønsker du? "))
    s = input("Er du glad i pannekaker? (J/N) ")

    if s == 'J':
        elsker_pannekaker = True
    else:
        elsker_pannekaker = False

    if (0 > p or p > 10):
        print("Beklager, men det er nok ikke mulig")
    elif elsker_pannekaker != True:
        print("...ikke mulig")
    else:
        r = 10 - p
        print("Da blir det", p, "på deg og", r, "på meg :D")

#d()