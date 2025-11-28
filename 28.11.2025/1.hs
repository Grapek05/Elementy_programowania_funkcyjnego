filter (/='e) "Mama tata" -- "Mama tata"
filter (/='t) "Mama tata" -- "Mama aa"
takeWhil (/='e) "Mama tata" -- "Mama "
dropWhile (/='e) "Mama tata" -- "tata"

head [1,2,3,4] -- 1
tail [1,2,3,4] -- [2,3,4]

:{
head' [] = error "Lista pusta"
head' (e:_) = e
:}
head' ""

:{
tail' [] = error "Lista pusta"
tail' (_:f) = f
:}
tail' ""
-- ""

:{
head' [] = error "Lista pusta"
head' (e:_) = e
:}
head' "a"
-- 'a'

:{
czylitera c =
    if c>='A'&&c<='Z'
    then " Litera"
    else " Nie litera"
:}
-- czylitera 'F'

:{
czylitera c =
    if c>='A'&&c<='Z'
    then " Big"
    else if c>='a'&&c<='z'
    then " Small "
    else " Nie litera"
:}
-- czylitera '?' " Nie litera "
-- czylitera 'A'
-- czylitera 'a'
