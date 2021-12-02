import sys
import random


milks = [
    ['DanoneMilk', 'NestleMilk', 'AdalMilks', 'PeterMilky'],['1l', '1gallon', '0,5l']
]

breads = [
    ['PaneraBread', 'Dempsters', 'GreateHarvest', 'WholeGrains' ,"Wheat",'ABCD','WhiteBread']
    ,  ['100g', '300g', '500g', '10slices']

]

chocolates = [
    ['KitKat','Kazakhstan', 
    'Sneakers', 'Mars', 'MilkyWay']
    ,['2piece', '1piece', '6cubes']

]

sodas = [
    ['Sprite', 'Coke', 'Fanta', 'Pepsi', 'DrPepper']
    ,
    ['1l','0.5l','0,33l']
]

prods = [milks, breads, chocolates, sodas]

with open('products.txt', 'w') as f:
    sys.stdout = f 
    for jj in range(100):
        product = prods[random.randrange(0,3)]
        for i in range(100):
            print( 'INSERT INTO products ' + "values('" + product[0][random.randrange(0,len(product[0]))] +","+ product[1][random.randrange(0,len(product[1]))]
             + "');" )
