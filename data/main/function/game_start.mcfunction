kill @e[tag=immune]
summon minecraft:armor_stand 209.49 5.00 -129.52 {CustomName:"Deadly Dead",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Settings"]}

scoreboard players set @e[tag=Settings] Loading 0
scoreboard players set @e[tag=Settings] Map 0
scoreboard players set @e[tag=Settings] Score 10000
scoreboard players operation @e[tag=Settings] Score = @e[tag=GameStart] Score
scoreboard players operation @e[tag=Settings] Map = @e[tag=GameStart] Map
scoreboard players operation @e[tag=Settings] dmScore = @e[tag=GameStart] dmScore
scoreboard players operation @e[tag=Settings] unless_draft = @e[tag=GameStart] unless_draft
scoreboard players operation @e[tag=Settings] TeamSelect = @e[tag=GameStart] TeamSelect
scoreboard players operation @e[tag=Settings] maxLoading = @e[tag=GameStart] maxLoading
scoreboard players operation @e[tag=Settings] fallen_flag_max_countdown = @e[tag=GameStart] fallen_flag_max_countdown
scoreboard players operation @e[tag=Settings] RequireConfirmation = @e[tag=GameStart] RequireConfirmation

# memory
function memory:on_game_start

# TICKETING (outsider detection)
scoreboard players set @e[tag=Settings] inp_Min 100
scoreboard players set @e[tag=Settings] inp_Max 100000
execute as @e[tag=Settings] run function main:random
execute as @e[tag=Settings] run scoreboard players operation @s Ticket = @s out_Random
execute as @a run scoreboard players operation @s Ticket = @e[tag=Settings,limit=1] Ticket

function battlegrounds:map_settings
execute store result bossbar minecraft:purple max run scoreboard players get @e[tag=Settings,limit=1] Score
execute store result bossbar minecraft:yellow max run scoreboard players get @e[tag=Settings,limit=1] Score
#execute unless entity @e[tag=PracticeCharPick] unless entity @e[tag=PracticeRoom] run kill @e[tag=GameStart]
kill @e[tag=GameStart]
team join yellow Yellow
team join purple Purple
kill @e[tag=char_displays]

execute as @a run function messages:game_start_mess