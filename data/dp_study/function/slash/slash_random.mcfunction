#> dp_study:slash/slash_fire

#ランダマイズ用
    summon marker ~ ~ ~ {Tags:["slash_randmaker"]}

    spreadplayers ~ ~ 5 10 false @e[type=marker,tag=slash_randmaker,limit=1]

#割り当て
    execute store result score @s slashRandom_yaw run data get entity @e[type=marker,tag=slash_randmaker,limit=1,sort=nearest] Pos[0] 1

    execute store result score @s slashRandom_pos_x run data get entity @e[type=marker,tag=slash_randmaker,limit=1,sort=nearest] Pos[2] 1

#    execute store result score @s slashRandom_pos_y run data get entity @e[type=marker,tag=slash_randmaker,limit=1,sort=nearest] Pos[2] 1

    kill @e[tag=slash_randmaker]

#計算-yaw
    #正の値にする
        scoreboard players add @s slashRandom_yaw 100000

    #一の位だけにする
        scoreboard players operation @s slashRandom_yaw %= $const10 slashRandom_yaw

#計算-pos
    #正の値にする
        scoreboard players add @s slashRandom_pos_x 100000

#        scoreboard players add @s slashRandom_pos_y 100000

    #一の位だけにする
        scoreboard players operation @s slashRandom_pos_x %= $const10 slashRandom_pos_x

        scoreboard players operation @s slashRandom_pos_y %= $const10 slashRandom_pos_y
