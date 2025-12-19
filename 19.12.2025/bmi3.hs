bmi w h
    | wh2 <= chudy = "KFC & McDonald"
    | wh2 <= normalny = "K. Figura"
    | wh2 <= gruby = "STOP"
    | otherwise = "Overkill"
    where 
        wh2 = w/h^2
        (chudy,normalny,gruby) = (18.5,25.5,30.0)