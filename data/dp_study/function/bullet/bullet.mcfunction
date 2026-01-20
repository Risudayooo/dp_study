#> dp_study:main

#移動    
    execute as @e[tag=bullet] at @s run tp @s ^ ^ ^1

#パーティクル
    execute as @e[tag=bullet] at @s run particle minecraft:flame ~ ~ ~
    

#bullet_damage
    execute as @e[tag=bullet] at @s if entity @n[distance=..1.5,tag=!bullet,type=!player] run function dp_study:bullet/bullet_damage

#bullet_collision
    execute as @e[tag=bullet] at @s if function better_collision:api/ run function dp_study:bullet/bullet_collision

#キル
    kill @e[tag=bullet,scores={bulletTimer=..0}]
    

