from random import randint

# a) --------------------------------
listen = []
def randList():
    for i in range(101):
        a = randint(0, 10)
        listen.append(a)
    #print(listen)
    return listen
#randList()

# b) -------------------------------
def findLetter(number):
    randList()
    counter = 0
    for x in range(0, len(listen)):
        if number == listen[x]:
            counter += 1
    print("Det er " + str(counter) + " " + str(number) + "'ere")
#findLetter(3)

# c) ------------------------------

def findSum():
    randList()
    sum = 0
    for y in range(0, len(listen)):
        sum += listen[y]
    print(sum)
#findSum()

# d) ----------------------------
def sortList():
    randList()
    listen.sort()
    #print(listen)
    return listen
#sortList()

# e) ----------------------------
def findTypetall():
    randList()
    resultat = 0
    for u in range(0, 11):
        antall = listen[u]
        if antall > resultat:
            resultat = antall
            flest = u
    print("det var flest " + str(flest) + "'ere")
#findTypetall()

# f) ---------------------------
def reverseList():
    sortList()
    listen.reverse()
    print(listen)
#reverseList()