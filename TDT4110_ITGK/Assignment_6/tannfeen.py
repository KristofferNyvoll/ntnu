def tannFeen(teeth):
    coins = [20, 10, 5, 1]
    toothValues = []
    # Looper gjennom listen med tennene.
    for i in teeth:
        value = []
        myntPlass = 0
        teller = 0

        while True:
            # Sjekker om verdien er null
            if i != 0:
                # Sjekker om myntene går opp i verdien. Trekker fra verdien
                if i - coins[myntPlass] >= 0:
                    teller += 1
                    i -= coins[myntPlass]

                # hvis resten er oddetall and coinincrement == 3, så legg inn verdi og break ut av while-løkke
                elif (i - coins[myntPlass] < 0) and (myntPlass == 3):
                    toothValues.append(teller)
                    break
                # legger til hvor mange som finnes av hver myntsort. Nullstiller teller.
                else:
                    value.append(teller)
                    teller = 0
                    myntPlass += 1
            # Breaker ut av while-løkken
            else:
                value.append(teller)
                toothValues.append(value)
                break

    return toothValues


print(tannFeen([95, 103, 71, 99, 114, 64, 95, 53, 97, 114, 109, 11, 2, 21, 45, 2, 26, 81, 54, 14, 118, 108, 117, 27, 115, 43, 70, 58, 107]))
