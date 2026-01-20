#> dp_study:bullet/bullet

#ダメージ
    execute as @e run damage @s[distance=..4,tag=!bullet,type=!player,type=!item] 10

#サウンド
    playsound entity.blaze.hurt player @a[distance=..20]

#パーティクル
    execute at @n run particle explosion ~ ~ ~

#キル
    kill @s