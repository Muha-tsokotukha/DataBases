import sys
import random

usedUPC = []
states = ['1,', '2,', '3,', '4,', '5,', '6,']

with open('Store_products.txt', 'w') as f:
    sys.stdout = f 
    while len(usedUPC) < 400:
        x = str(random.randrange(1,401)) 
        if x not in usedUPC:
            usedUPC.append(x)
            x = x + ");"
            y = states[random.randrange(0,6)]
            print( "INSERT INTO store_products values(" + y + x )


