# a)
number_list = []
for i in range(0, 100):
    number_list.append(i)
print(number_list)


# b)
summert = 0
for x in range(0, 100):
    if (x % 3) == 0 or (x % 10) == 0:
        summert += x
print(summert)


# c)
new_number_list = []
def byttPlass(y):
    g = y + 1
    new_number_list.append(g)
    new_number_list.append(y)

for y in range(0, 100):
    if y % 2 == 0:
        byttPlass(y)
print(new_number_list)


# d)
reversed_list = []
for s in range(99, -1, -1):
    reversed_list.append(number_list[s])
print(reversed_list)