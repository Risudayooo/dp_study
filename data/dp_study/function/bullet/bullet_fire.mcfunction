#> dp_study:main

#召喚
    summon marker ^ ^ ^1 {Tags:["bullet"]}

#サウンド
    playsound entity.blaze.shoot player @a[distance=..10]

    
#タイマーセット
    scoreboard players set @e[tag=bullet] bulletTimer 20

#クールタイムセット
    scoreboard players set @s bulletCool 20

#位置調整
    tp @n[tag=bullet,scores={bulletTimer=20}] ~ ~1 ~ ~ ~

