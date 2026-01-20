#> dp_study:tick


#bullet
    #bullet_fire
        execute as @a[predicate=dp_study:use,predicate=dp_study:bullet,scores={bulletCool=..0}] at @s run function dp_study:bullet/bullet_fire

    #bullet_cool
        execute as @a[predicate=dp_study:bullet] at @s run function dp_study:bullet/bullet_cool
        execute as @a[predicate=!dp_study:bullet] at @s run title @s actionbar ""

    #bullet
        execute if entity @e[tag=bullet] run function dp_study:bullet/bullet

    #bulletTimer
        scoreboard players remove @e[tag=bullet] bulletTimer 1

    #bulletCool
        scoreboard players remove @a bulletCool 1

        
#slash
    #slash_fire
        execute as @a[predicate=dp_study:use,predicate=dp_study:slash,scores={slashCool=..0}] at @s run function dp_study:slash/slash_fire

    #slash
        execute if entity @e[tag=slash] run function dp_study:slash/slash

    #slashCool
        scoreboard players remove @a slashCool 1


#fist
    #fist_fire
        execute as @a[predicate=dp_study:use,predicate=dp_study:fist,scores={fistCool=..0}] at @s run function dp_study:fist/fist_fire

        
#右クリック
    scoreboard players set @a[predicate=dp_study:use] use 0
