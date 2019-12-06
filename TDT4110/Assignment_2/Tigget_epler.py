def a():
    print("Dette er et program for å teste din sjenerøsitet.")
    har_epler = int(input("Hvor mange epler har du? "))

    if har_epler == 0:
        print("Æsj, det sier du bare for å slippe å gi noe!")

    elif har_epler > 0:
        gir_epler = int(input("Hvor mange kan du gi til meg? "))
        sum_epler = har_epler - gir_epler
        if gir_epler < har_epler / 2:
            print("Du beholder det meste for deg selv...")

        else:
            print("Takk, det var snilt!")
            if sum_epler == 1:
                print("Du har nå", sum_epler, "eple igjen.")

            elif sum_epler < 0:
                print("Du har nå 0 epler igjen. Gi meg de", abs(sum_epler), "gjenværende neste gang vi møtes.")

            else:
                print("Du har nå", sum_epler, "epler igjen.")

a()