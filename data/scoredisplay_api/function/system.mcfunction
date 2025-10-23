# Hacked-in support for score display systems other than altar control
# Variable originally used by Deathmatch, it is also used by CTF. How many points per kill/flag
# If you wish to change it, do it here and in lobby:score_up, score_down, up_5 and so on
scoreboard players set C_dm dmTemp 100

function battlegrounds:map_settings
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] run scoreboard objectives setdisplay sidebar ScoreDisplay
execute if entity @e[tag=Settings,scores={Deathmatch=1,CTF=0}] run scoreboard objectives setdisplay sidebar dmScoreDisplay
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=1}] run scoreboard objectives setdisplay sidebar ctfScoreDisplay

execute if entity @e[tag=Settings,scores={Deathmatch=1,CTF=0}] run function scoredisplay_api:dm
execute if entity @e[tag=GameStart,scores={Deathmatch=1,CTF=0}] run function scoredisplay_api:dm
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=1}] run function scoredisplay_api:ctf
execute if entity @e[tag=GameStart,scores={Deathmatch=0,CTF=1}] run function scoredisplay_api:ctf
