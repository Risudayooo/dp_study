#> dp_study:load

# ロードエントリ

# 導入時メッセージ
    say Datapack 'DP_study' has been successfully loaded with namespace 'dp_study'.

#スコアボード
    
    #USE
        scoreboard objectives add use used:carrot_on_a_stick

    #bullet
        #bulletTimer
            scoreboard objectives add bulletTimer dummy

        #bulletCool
            scoreboard objectives add bulletCool dummy


    #slash
        #slashTimer
            scoreboard objectives add slashTimer dummy

        #slashCool
            scoreboard objectives add slashCool dummy

        #slashRamdom_yaw
            scoreboard objectives add slashRandom_yaw dummy

            scoreboard players set $const10 slashRandom_yaw 10

        #slashRandom_pos
            scoreboard objectives add slashRandom_pos_x dummy

            scoreboard objectives add slashRandom_pos_y dummy

            scoreboard players set $const10 slashRandom_pos_x 10

            scoreboard players set $const10 slashRandom_pos_y 10

            scoreboard players set $slashTimer slashTimer 4

    #fist
        #fistCool
            scoreboard objectives add fistCool dummy
