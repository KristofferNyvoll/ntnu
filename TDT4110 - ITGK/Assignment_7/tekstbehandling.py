# a) ------------------------------------

def toUpperCase():
    raw = input("Skriv inn en string: ")
    result = raw.upper()
    result.lstrip()
    print(result)
#toUpperCase()

# b) -----------------------------------

def splittString(word, letter):
    liste = word.split(letter)
    print(liste)
#splittString("derek", "e")

# c) -----------------------------------
'''
Funksjonen vil skrive ut:
"The more you weigh, the harder you are to kidnap. Stay safe. Eat cake."

Årsak: eat eksisterer i s2.lower(). Ergo vil s bli printet ut. 
'''

# d) -----------------------------------
def fancyPattern():
    for i in range(1, 9):
        print("Z"*i)
    for y in range(9,0,-1):
        print("Z"*y)
#fancyPattern()