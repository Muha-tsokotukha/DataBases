import sys
import random

# sodas = [
#     "'Sprite'", "'Coke'", "'Fanta'", "'Pepsi'", "'DrPepper'"
# ]

# with open('products_soda_t.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(100):
#         print( 'INSERT INTO products2 ' + "values(" + str(i+1) +"," + sodas[random.randrange(0,5)]
#         + ");" )


# milks = [
#     "'DanoneMilk'", "'NestleMilk'", "'AdalMilks'", "'PeterMilky'"
# ]
# with open('products_milk_t.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(101,202):
#         print( 'INSERT INTO products2 ' + "values(" + str(i) +"," + milks[random.randrange(0,4)]
#         + ");" )
# chocolates = [
#     "'KitKat'","'Kazakhstan'", 
#     "'Sneakers'", "'Mars'", "'MilkyWay'"
# ]

# with open('products_choco_t.txt', 'w') as f:
#     sys.stdout = f 
#     for i in range(202,301):
#         print( 'INSERT INTO products2 ' + "values(" + str(i) +"," + chocolates[random.randrange(0,5)]
#         + ");" )

breads = [
    "'PaneraBread'", "'Dempsters'", "'GreateHarvest'", "'WholeGrains'" ,"'Wheat'","'ABCD'","'WhiteBread'"

]


with open('products_bread_t.txt', 'w') as f:
    sys.stdout = f 
    for i in range(301,401):
        print( 'INSERT INTO products2 ' + "values(" + str(i) +"," + breads[random.randrange(0,7)]
        + ");" )

