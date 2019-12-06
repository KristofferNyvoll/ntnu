def a():
    pos = input("Skriv inn ønsket rute: ")
    bokstav = pos[0]
    tall = int(pos[1])
    parBok = ["a", "c", "e", "g"] # Disse blir hvite når tall er partall
    oddeBok = ["b", "d", "f", "h"] # Disse blir hvite når tall er odde


    if (len(pos) > 2) or tall > 8 or tall < 1:
        print("Du kan kun skrive TO tegn; en bokstav mellom 'a-h' etterfulgt av et siffer [1-8]")


    elif bokstav in parBok:
        if tall % 2 == 0:
            print("Cellen er hvit")

        else:
            print("Cellen er svart")

    elif bokstav in oddeBok:
        if tall % 2 == 0:
            print("Cellen er Svart")

        else:
            print("Cellen er hvit")

a()