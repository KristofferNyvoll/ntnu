def find_change(count):
    endring = 1 + (1/(count**2))
    return endring

def findProd(tol):
    count = 1
    prod = 1
    while find_change(count) > (tol + 1):
        prod *= find_change(count)
        count += 1
    print("Produktet ble " + str(prod) + " etter " + str(count) + " iterasjoner.")
findProd(0.001)
