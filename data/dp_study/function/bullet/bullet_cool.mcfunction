#> dp_study:main

#バレットクールのゲージ化

    execute if score @s bulletCool matches 19.. run title @s actionbar {"text":"[==========]"}
    execute if score @s bulletCool matches 17..18 run title @s actionbar {"text":"[=========-]"}
    execute if score @s bulletCool matches 16..17 run title @s actionbar {"text":"[========--]"}
    execute if score @s bulletCool matches 14..15 run title @s actionbar {"text":"[=======---]"}
    execute if score @s bulletCool matches 13..14 run title @s actionbar {"text":"[======----]"}
    execute if score @s bulletCool matches 11..12 run title @s actionbar {"text":"[=====-----]"}
    execute if score @s bulletCool matches 9..10 run title @s actionbar {"text":"[====------]"}
    execute if score @s bulletCool matches 7..8 run title @s actionbar {"text":"[===-------]"}
    execute if score @s bulletCool matches 5..6 run title @s actionbar {"text":"[==--------]"}
    execute if score @s bulletCool matches 3..4 run title @s actionbar {"text":"[=---------]"}
    execute if score @s bulletCool matches 1..2 run title @s actionbar {"text":"[----------]"}

    execute if score @s bulletCool matches ..1 run title @s actionbar {"text":"[-=READY=-]"}