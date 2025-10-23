# Altar control
execute as @e[tag=GameStart,scores={Deathmatch=0}] unless entity @s[scores={Score=..599}] run scoreboard players remove @s Score 100

# Deathmatch
execute as @e[tag=GameStart,scores={Deathmatch=1}] unless entity @s[scores={Score=..599}] run scoreboard players remove @s Score 100

function scoredisplay_api:system
function lobby:options