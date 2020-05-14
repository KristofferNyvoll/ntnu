import random

def gjettelek():
    min = int(input("Angi minste intervall: "))
    max = int(input("Angi største verdi for intervallet: "))
    tilfeldigTall = random.randint(min,max)

    gjett = int(input("Tipp verdien: "))
    while (gjett != tilfeldigTall):
        if gjett > tilfeldigTall:
            print("Den korrekte verdien er mindre")
        else:
            print("Den korrekte verdien er større")
        gjett = int(input("Tipp verdien: "))
    print("Du gjettet riktig!")

gjettelek()