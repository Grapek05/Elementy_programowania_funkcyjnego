any (1==0) [0,2,4,6] -- False
any (1==0) [0,2,4,6,1] -- True
any (>6) [0,2,3,6,1] -- False
any (>=6) [0,2,3,6,1] -- True
any (\a ->a*3>17) [1,3,5,6] -- True
filter (>3) [1,2,3,4] -- [4]
filter ( \x-> length x<3) ["abc","abcd"] -- []
filter ( \x-> length x>3) ["abc","abcd"] -- [a,b,c,d]
filter ( \x-> length x < 4) ["abc","abcd"] -- [a,b,c]
takeWhile (<3) [1,2,3,4] -- [1,2]
takeWhile ('c'>) "hello.cat" -- ""
takeWhile ('j'>) "hello.joy" -- "he"
takeWhile ('J'>) "hello.joy" -- ""
takeWhile ('z'>) "hello.joy" -- "hello.joy"
takeWhile ('ł'>) "hello.joy" -- "hello.joy"
takeWhile (\x->x*4<40) [1..50] -- [1,2,3,4,5,6,7,8,9]
takeWhile (\x->x*4<20) [1..50] -- [1,2,3,4]
takeWhile (\x->x*4<201) [1..50] -- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
dropWhile (<3) [1,2,3,4] -- [3,4]
dropWhile (<3) [1,2,3,4] -- [5,3,4]
dropWhile (>3) [1,2,3,4] -- [1,5,3,4]
dropWhile (<6) [1,2,3,4] -- []
dropWhile ('j'>) "hello.joy" -- "llo.joy"
dropWhile ('j'<) "hello.joy" -- "hello.joy"
filter (/='a') "Ala zjadla kota" -- "Al zjdl kot"
:{
    silnia 0 1
    silnia n = n*silnia(n-1)

:}
silnia 5 -- 120

s k1 k2 =(fst k1 + fst k2, snd k1 + snd k2)
k1 = ("a","b")
k2 = (1,2)
fst k1 -- "a"
fst k2 -- 1
