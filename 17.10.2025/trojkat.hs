y4 :: Double -> Double -> Double -> Double
y4 a b c = sqrt (po * (po - a) * ( po - b) * ( po - c))
 where
    po = (a + b + c) / 2
