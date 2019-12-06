# a)

def separate(numbers, threshold):
    less_than = []
    more_than = []
    length = len(numbers)
    for x in range(length):
        if numbers[x] < threshold:
            less_than.append(x)
        else:
            more_than.append(x)
    return less_than, more_than

less_than, more_than = separate([0, 1, 2, 3, 4, 5], 3)
print(less_than)
print(more_than)


# b)

new_list = []
def multiplication_table(n):
    for y in range(1, n+1):
        ny_rad = []
        for j in range(1, n+1):
            ny_rad.append(j*y)
        new_list.append(ny_rad)
multiplication_table(6)
for rad in new_list:
    print(rad)