kill @e[tag=immune]
#summon minecraft:armor_stand 209.49 5.00 -129.52 {CustomName:"Deadly Dead",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","settings"]}
scoreboard objectives add settings dummy

scoreboard players set loading settings 0
scoreboard players set map settings 0
scoreboard players set score_max settings 10000
scoreboard players operation score settings = score game_start
scoreboard players operation map settings = map game_start
scoreboard players operation dm_score settings = dm_score game_start
scoreboard players operation unless_draft settings = unless_draft game_start
scoreboard players operation team_select settings = team_select game_start
scoreboard players operation max_loading settings = max_loading game_start
scoreboard players operation fallen_flag_max_countdown settings = fallen_flag_max_countdown game_start
scoreboard players operation require_confirmation settings = require_confirmation game_start

# memory
function memory:on_game_start

# TICKETING (outsider detection) (what is "outsider" ?)
#scoreboard players set inp_Min settings 100
#scoreboard players set inp_Max settings 100000
execute store result score random settings run function core:main/random/random {in_min:100,in_max:100000}
scoreboard players operation ticket settings = random settings
execute as @a run scoreboard players operation @s Ticket = ticket settings

function battlegrounds:map_settings
execute store result bossbar minecraft:purple max run scoreboard players get score_max settings
execute store result bossbar minecraft:yellow max run scoreboard players get score_max settings
#execute unless entity @e[tag=PracticeCharPick] unless entity @e[tag=PracticeRoom] run kill @e[tag=game_start]

team join yellow Yellow
team join purple Purple
kill @e[tag=char_displays]

execute as @a run function messages:game_start_mess