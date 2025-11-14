sum [1,3,5,7,9] // 25
reverse [1,3,5,7,9] // Odwraca wartości
elem [1,3,5,7,9] // False
elem 3 [1,3,5,7,9] // True sprawdza czy jest liczba 3
fst::(e,z)->e
fst("e","z") // first zwraca "e"
snd::(e,z)->z
snd("e","z") // second z krotki dwuelementowej zwraca "z"
foldr (-)3 [5,8,11]
foldl (-)3 [5,8,11]
foldr (-)4 [11,7,9] // 11-(7-(9-4)) 11-(7-5) 11-2 = 9
foldr (-)4 [11] // Wynik to 7.
foldl (/)729 [9,3,3] // ((729/9)/3)/3 (81/3)/3 27/3 = 9.0
foldl(/)3 [] // Wynik to 3.0
map sqrt[4,16,36] // Zwraca wynik [2.0,4.0,6.0]
map snd[(1,'a'),(2,'b')] // Zwraca wynik "ab"
map snd[(1,'a'),(2,'b'),(3,'3')] // Zwraca wynik "ab3"
map reverse ["abc","123"] // Zwraca ["cba","321"] Lista
l1=[1,3,5]
l2=[4,7,5]
suma a b = a + b
zipWith suma l1 l2
// Zwraca [5,10,10]
zipWith (>) "ali""babi" // Zwraca [False,True,True]
zipWith (>) "ali""baja" // Zwraca [False,True,False,True]