#> dp_study:main

#ダミー召喚
    execute at @s run summon marker ~ ~1.6 ~ {Tags:["slash_dummy"]}

#位置調整
    execute as @s at @s run tp @e[tag=slash_dummy,sort=nearest,limit=1] ~ ~ ~ ~ ~

#回転処理

    execute as @e[tag=slash_dummy,sort=nearest] at @s run function dp_study:slash/slash_random

#斬撃召喚
    execute unless entity @e[type=marker,tag=slash_dummy,limit=1] run return fail

    execute as @e[tag=slash_dummy,sort=nearest] at @s run function dp_study:slash/slash_pattern_pos

    execute as @e[tag=slash_dummy,sort=nearest] at @s run function dp_study:slash/slash_pattern_yaw
 
    kill @e[type=marker,tag=slash_dummy]

#サウンド
    playsound entity.player.attack.sweep player @a[distance=..8]

#クールタイムセット
    scoreboard players set @s slashCool 3

#タイマーセット
    execute as @e[tag=slash] unless score @s slashTimer < $slashTimer slashTimer run scoreboard players set @s slashTimer 4

