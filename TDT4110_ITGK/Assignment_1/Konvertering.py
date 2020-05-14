def a():
    flyttall1 = float(input("Skriv inn et flyttall: "))
    flyttall2 = float(input("Skriv inn enda et flyttall: "))
    flyttall3 = float(input("Skriv inn et siste flyttall: "))
    print("Konvertert til heltall blir det: ", int(flyttall1), int(flyttall2), int(flyttall3))
    heltall = float(input("Skriv inn et heltall: "))
    print("Konvertert til flyttall blir det: ", float(heltall))
#a()

def b():
    navn = input("Skriv ditt navn: ")
    alder = int(input("Hei, " + navn + ", hvor gammel er du?"))
    alder2 = int(input("Hvor gammel var du da du begynte å programmere?"))
    differanse = int(alder - alder2)
    print("Da har du programmert i " + str(differanse) + " år.")
    input("Synes du de "  + str(differanse) + " årene har vært givende?")
    print("Takk for svar, " + navn + "!")
#b()


def c():
    print("Vennligst gi inn et flyttall med minst 5 siffer både før og etter desimalskillet (.)")
    tallc = float(input("Hva er tallet ditt? "))
    heltallc = int(tallc)
    print("Konvertert til heltall med int(): ", heltallc)
    avrundtallc = round(tallc)
    print("Avrundet til nærmeste heltall: ", avrundtallc)
    print("Avrundet til to desimaler: ", round(tallc, 2))
    print("Avrundet til fire desimaler: ", round(tallc, 4))
    print("Avrundet til nærmeste tusen: ", round(tallc, -3))
    print("Heltall fra int() konvertert tilbake til flyttall: ", float(heltallc))
#c()

def d():
    talld = float(input("Skriv et flyttall: "))
    desimaler = int(input("Hvor mange desimaler er ønskelig?"))
    nyttalld = round(talld, desimaler)
    if desimaler == 1:
        print("Tallet du skrev er  ", talld, " og med ", desimaler, " desimal blir det ", nyttalld)

    else:
        print("Tallet du skrev er ", talld, " og med ", desimaler, " desimaler blir det ", nyttalld)
#d()