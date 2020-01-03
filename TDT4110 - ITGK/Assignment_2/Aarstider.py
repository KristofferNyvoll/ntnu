
def findmonth():
    month = input("Måned: ")
    date = int(input("Dato: "))

    if (month == "Mars" and date >= 20) or month == "April" or month == "Mai" or (month == "Juni" and date < 21):
        print("Det er vår")

    elif (month == "Juni" and date >= 21) or month == "Juli" or month == "August" or month == "September" and date < 22:
        print("Det er sommer")

    elif (month == "September" and date >= 22) or month == "Oktober" or month == "November" or month == "Desember" and date < 21:
        print("Det er høst")

    elif (month == "Desember" and date >= 21) or month == "Januar" or month == "Februar" or month == "Mars" and date < 21:
        print("Det er vinter")

    else:
        print("Du har skrevet noe ugyldig. Husk stor forbokstav og norske uttrykk :)")

findmonth()