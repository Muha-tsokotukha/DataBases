import sys
import random

# sodas = ["'0.5l', '0.7' ", "'0.7l', '0.9'","'1l','1.3'" ]

# with open('products_soda.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(100):
#         print( 'INSERT INTO products(size,cost) ' + "values(" + sodas[random.randrange(0,3)]
#         + ");" )

# milks = [
#     "'gallon', '2'", "'1l', '1.5'", "'0.5l', '1'", "'0.33', '1.2'"
# ]

# with open('products_milk.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(100):
#         print( 'INSERT INTO products(size,cost) ' + "values(" + milks[random.randrange(0,4)]
#         + ");" )

# chocolates = [
#     "'1piece', '0.3'","'2pieces','0.7'", 
#     "'bar', '1.2'"
# ]

# with open('products_choco.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(100):
#         print( 'INSERT INTO products(size,cost) ' + "values(" + chocolates[random.randrange(0,3)]
#         + ");" )

breads = [
    "'100g', '1'","'300g','0.7'", 
    "'500g', '1.2'", "'10slice', '0.7'"
]

with open('products_bread.txt', 'w') as f:
    sys.stdout = f 
    for i in range(100):
        print( 'INSERT INTO products(size,cost) ' + "values(" + breads[random.randrange(0,4)]
        + ");" )

