scoreboard players set @a[scores={Spawned=1}] Loading 0
execute as @a[scores={Spawned=0,Loading=0}] run scoreboard players operation @s Loading = @e[tag=Settings,limit=1] maxLoading

execute as @a[scores={Spawned=0}] run function messages:respawn_progress

execute as @a[scores={Spawned=0,Loading=1}] run function main:respawn_player_ingame
scoreboard players remove @a[scores={Loading=1..}] Loading 1

#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]