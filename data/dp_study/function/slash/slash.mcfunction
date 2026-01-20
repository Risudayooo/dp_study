#> dp_study:main

#slashTimer
    scoreboard players remove @e[tag=slash] slashTimer 1

    kill @e[tag=slash,scores={slashTimer=..0}]

#パーティクル
    execute at @e[tag=slash] run particle dust_color_transition{from_color:[0.5,0.0,1.0],to_color:[1.0,0.0,0.5],scale:0.8} ~ ~ ~ 0 0 0 1.5 10

#ダメージ
    execute as @e[tag=slash] at @s if entity @n[distance=..1.5,tag=!slash,type=!player] run function dp_study:slash/slash_damage

