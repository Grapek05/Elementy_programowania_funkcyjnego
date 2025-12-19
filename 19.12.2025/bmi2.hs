bmi w h
    | wh2 <= 18.5 = "KFC & McDonald"
    | wh2 <= 25.5 = "K. Figura"
    | wh2 <= 30.0 = "STOP"
    | otherwise = "Overkill"
    where wh2 = w/h^2