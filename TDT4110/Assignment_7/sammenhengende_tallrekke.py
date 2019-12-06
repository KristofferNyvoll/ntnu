from random import randint

# a) ----------------------------------------------------
def randList(size, lower_bound, upper_bound):
    liste = []
    for x in range(size):
        random_number = randint(lower_bound, upper_bound)
        liste.append(random_number)
    print(liste)
#randList(40, 4, 9)

# b) ------------------------------------------------------
def compareLists(list1, list2):
    union = []
    for x in range(0, len(list1)):
        for y in range(0, len(list2)):
            if list1[x] == list2[y]:
                union.append(list1[x])
    print(union)
#compareLists([1, 2 ,3 ,4 ,5 ,6 ,7], [5, 6, 7, 8, 9, 10])

# c) ----------------------------------------------------
def multiCompList(lists):
    # kanskje sammenligne to og bruke resultatet til å sammenligne med den neste.
    antall = lists.count()
    print(antall)
#multiCompList([2, 4, 6, 2,], [1, 6, 9 ,2], [2, 5, 7, 5])