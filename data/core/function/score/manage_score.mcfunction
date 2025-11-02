# score - publicly visible score
# score_max settings - max score necessary to win (based on score)
# temp_score - (used mainly from altars) in game score value, hidden to public, used to calculate actual score 

execute if score purple temp_score matches 80.. run scoreboard players add purple score 4
execute if score purple temp_score matches 80.. run scoreboard players set purple temp_score 0

execute if score yellow temp_score matches 80.. run scoreboard players add yellow score 4
execute if score yellow temp_score matches 80.. run scoreboard players set yellow temp_score 0


#TO EDIT FOR FFA
execute store result bossbar minecraft:purple max run scoreboard players get score_max settings
execute store result bossbar minecraft:yellow max run scoreboard players get score_max settings

execute if score map_type settings matches 1..3 store result bossbar minecraft:purple value run scoreboard players get purple score
execute if score map_type settings matches 1..3 store result bossbar minecraft:yellow value run scoreboard players get yellow score

execute if score purple score >= score_max settings run function core:score/win_purple
execute if score yellow score >= score_max settings run function core:score/win_yellow
#FFA
execute as @a[tag=in_game] if score @s score >= score_max settings run function core:score/win_solo


execute if score map_type settings matches 1 as @a[scores={Kills=1..},team=purple] run scoreboard players add purple score 20

execute if score map_type settings matches 1 as @a[scores={Kills=1..},team=yellow] run scoreboard players add yellow score 20

execute if score map_type settings matches 2 as @a[scores={Kills=1..},team=purple] run scoreboard players add purple score 1
execute if score map_type settings matches 2 as @a[scores={Kills=1..},team=yellow] run scoreboard players add yellow score 1


#Scoreboard display
execute if score map_type settings matches 1 run scoreboard objectives modify score displayname {text:"-=Score=-",color:"green",bold:1b}
execute if score map_type settings matches 2 run scoreboard objectives modify score displayname {text:"-=Kills=-",color:"red",bold:1b}
execute if score map_type settings matches 3 run scoreboard objectives modify score displayname {text:"-=Captures=-",color:"aqua",bold:1b}


scoreboard players display name yellow score {color:yellow,bold:true,text:"Yellow"}
scoreboard players display name purple score {color:"dark_purple",bold:true,text:"Purple"}


execute unless score purple score matches 0.. run scoreboard players set purple score 0
execute unless score yellow score matches 0.. run scoreboard players set yellow score 0

scoreboard objectives setdisplay sidebar score



# Add kill count
execute as @a[scores={Kills=1..}] run scoreboard players add @s StatKillsN 1

execute as @a[scores={Kills=1..}] run scoreboard players remove @s Kills 1
