# summon armor_stand ~1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScorePurple"]}
# summon armor_stand ~-1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScoreYellow"]}

#summon minecraft:marker 208.5 4.00 -133.5 {CustomName:"Purple",Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["immune","ScorePurple"]}
#summon minecraft:marker 210.5 4.00 -133.5 {CustomName:"Yellow",Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["immune","ScoreYellow"]}
scoreboard objectives add score_purple dummy
scoreboard objectives add score_yellow dummy

scoreboard players set temp_score score_purple 0
scoreboard players set time score_purple 0
scoreboard players operation score score_purple = score settings

#scoreboard players set @e[tag=ScorePurple] TempScore 0
#scoreboard players set @e[tag=ScorePurple] Time 0
#scoreboard players operation @e[tag=ScorePurple] Score = @e[tag=Settings] Score

scoreboard players set temp_score score_yellow 0
scoreboard players set time score_yellow 0
scoreboard players operation score score_yellow = score settings

#scoreboard players set @e[tag=ScoreYellow] TempScore 0
#scoreboard players set @e[tag=ScoreYellow] Time 0
#scoreboard players operation @e[tag=ScoreYellow] Score = @e[tag=Settings] Score

scoreboard players set Purple ScoreDisplay 0
scoreboard players set Yellow ScoreDisplay 0

scoreboard objectives setdisplay sidebar ScoreDisplay
