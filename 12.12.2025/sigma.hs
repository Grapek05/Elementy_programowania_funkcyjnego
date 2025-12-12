ghci> foldl (/) 64 [4,4,2]
2.0
-- Pokazuj bezpośrednie działania
-- 64=in, 2=out
ghci> scanl (/) 64 [4,4,2]
[64.0,16.0,4.0,2.0]
ghci
 
ghci> foldl1 (/) [64,4,4,2]
2.0
ghci> scanl1 (/) [64,4,4,2]
[64.0,16.0,4.0,2.0]
 
-- 8: 8 = 8
-- 8: (8-4)/2 = 2
-- 2: (2-2)/2 = 0
-- 0: (0-(-4))/2 = 2
ghci> foldl1 (\x y->(x-y)/2) [8,4,2,(-4)]
2.0
ghci> scanl1 (\x y->(x-y)/2) [8,4,2,(-4)]
[8.0,2.0,0.0,2.0]
 
-- 8/(12/(24/(4/2)))
ghci> foldr (/) 2 [8,12,24,4]
8.0
ghci> scanr (/) 2 [8,12,24,4]
[8.0,1.0,12.0,2.0,2.0]
 
-- 3
-- (3+7)/2 = 5
-- (5+5)/2 = 5
-- (5+9)/2 = 7
-- (7+7)/2 = 7
ghci> foldr (\x y->(x+y)/2) 3 [7,9,5,7]
7.0
ghci> scanr (\x y->(x+y)/2) 3 [7,9,5,7]
[7.0,7.0,5.0,5.0,3.0]
 
ghci> foldr1 (/) [6,9,15,5]
2.0
ghci> scanr1 (/) [6,9,15,5]
[2.0,3.0,3.0,5.0]
 
-- 2
-- (2+6)/2 = 4
-- (10+4)/2 = 7
-- (9+7)/2 = 8
-- (-8+8)/2 = 0
ghci> foldr1 (\x y->(x+y)/2) [(-8),9,10,6,2]
0.0
ghci> scanr1 (\x y->(x+y)/2) [(-8),9,10,6,2]
[0.0,8.0,7.0,4.0,2.0]
 
 
-- switch-case
ghci> :{
ghci| czyPrawda x = case x of
ghci|   0 -> "Prawda"
ghci|   1 -> "Falsz"
ghci| :}
ghci> czyPrawda 0
"Prawda"
ghci> czyPrawda 1
"Falsz"
 