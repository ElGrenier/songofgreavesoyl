# summon armor_stand ~1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScorePurple"]}
# summon armor_stand ~-1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScoreYellow"]}

summon minecraft:armor_stand 208.5 4.00 -133.5 {CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScorePurple"]}
summon minecraft:armor_stand 210.5 4.00 -133.5 {CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScoreYellow"]}

scoreboard players set @e[tag=ScorePurple] TempScore 0
scoreboard players set @e[tag=ScorePurple] Time 0
scoreboard players operation @e[tag=ScorePurple] Score = @e[tag=Settings] Score

scoreboard players set @e[tag=ScoreYellow] TempScore 0
scoreboard players set @e[tag=ScoreYellow] Time 0
scoreboard players operation @e[tag=ScoreYellow] Score = @e[tag=Settings] Score

scoreboard players set @a Winning 0

scoreboard players set Purple ScoreDisplay 0
scoreboard players set Yellow ScoreDisplay 0

scoreboard objectives setdisplay sidebar ScoreDisplay
