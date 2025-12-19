bmi w h =
    let bmi = w/h^2
    in if bmi <= 18.5
        then "KFC & McDonald"
        else if bmi <= 25.5
            then "K. Figura"
            else if bmi <= 30.0
                then "STOP"
                else "Overkill"