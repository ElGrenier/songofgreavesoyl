# Wywolanie: execute as @e[tag=Settings] if entity @s[scores={Deathmatch=1}] run function score:deathmatch

execute as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players operation @e[tag=ScorePurple,limit=1] Score -= C_dm dmTemp
execute as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players operation Purple ScoreDisplay += C_dm dmTemp
execute as @a[scores={Team=1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @s Kills 1

execute as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players operation @e[tag=ScoreYellow,limit=1] Score -= C_dm dmTemp
execute as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players operation Yellow ScoreDisplay += C_dm dmTemp
execute as @a[scores={Team=-1,Kills=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction=2..}] run scoreboard players remove @s Kills 1

