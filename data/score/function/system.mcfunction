# summon armor_stand ~1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScorePurple"]}
# summon armor_stand ~-1 ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","ScoreYellow"]}

# Counting points for Purple team
scoreboard players add @e[tag=ScorePurple] Time 1
scoreboard players remove @e[tag=ScorePurple,scores={TempScore=80..}] Score 4
execute if entity @e[tag=ScorePurple,scores={TempScore=80..}] run scoreboard players add Purple ScoreDisplay 4
scoreboard players set @e[tag=ScorePurple,scores={TempScore=80..}] TempScore 0

# Counting points for Yellow team
scoreboard players add @e[tag=ScoreYellow] Time 1
scoreboard players remove @e[tag=ScoreYellow,scores={TempScore=80..}] Score 4
execute if entity @e[tag=ScoreYellow,scores={TempScore=80..}] run scoreboard players add Yellow ScoreDisplay 4
scoreboard players set @e[tag=ScoreYellow,scores={TempScore=80..}] TempScore 0

# Blacksouls tag
# KillRestriction = 2.. means no kills should be accounted
execute as @a[tag=blacksouls,scores={KillRestriction=1..}] run scoreboard players add @s KillRestriction 1
execute as @a[tag=blacksouls,scores={KillRestriction=10..}] run scoreboard players set @s Kills 0
execute as @a[tag=blacksouls,scores={KillRestriction=10..}] run scoreboard players set @s KillRestriction 0
execute as @a[tag=blacksouls,scores={Kills=1..,KillRestriction=0}] run scoreboard players set @s KillRestriction 1

# Kill counting for stats
execute as @a[scores={Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players add @s StatKillsN 1

# Score counting for kills - deathmatch
execute as @e[tag=Settings] if entity @s[scores={Deathmatch=1,CTF=0}] run function score:deathmatch

# Score counting for kills - normal mode
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @e[tag=ScorePurple] Score 20
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players add Purple ScoreDisplay 20
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @s Kills 1

execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @e[tag=ScoreYellow] Score 20
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players add Yellow ScoreDisplay 20
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @s Kills 1

# Decreasing Kills for CTF
execute if entity @e[tag=Settings,scores={CTF=1}] as @a[scores={Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @s Kills 1

# Ending game
execute if entity @e[tag=ScorePurple,scores={Score=..0}] unless entity @a[scores={Winning=1}] run function score:winpurple
execute if entity @e[tag=ScoreYellow,scores={Score=..0}] unless entity @a[scores={Winning=1}] run function score:winyellow

# Copying score into bossbar
execute store result bossbar minecraft:yellow value run scoreboard players get Yellow ScoreDisplay
execute store result bossbar minecraft:purple value run scoreboard players get Purple ScoreDisplay

# Setting bossbar order
function score:visibility