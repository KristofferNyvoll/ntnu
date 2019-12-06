def a():
    i = 0
    n = int(input("Angi n: "))
    r = float(input("Angi r: "))
    verdi = 0
    while (i <= n):
        verdi += (r**i)
        i += 1
    print(verdi)
a()


def b():
    n = 0
    tol = 0.001
    r = 0.5
    summen = 0

    while (2 - summen) > tol:
        summen = (1-r**(n+1))/(1-r)
        n += 1
    print(summen)
    print("Antall iterasjoner: ", n)
    print("Differansen mellom grenseverdien og faktisk verdi: ", 2 - summen)

#b()