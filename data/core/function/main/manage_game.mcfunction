
execute if score game_state settings matches 7.. positioned 207 34 -130 run function core:main/game/death_restart

#During game start, we show the picks scoreboard
execute if score game_state settings matches 2..7 run function core:main/picks_scoreboard

#Waiting room management
execute if score game_state settings matches 2.. positioned 287 15.00 -126 run function core:main/game/loop_waiting_room

#spawn outsider
execute if score game_state settings matches 3.. as @a[tag=!in_game,tag=!outsider] run function core:main/game/spawn_outsider

#manage respawn timer
execute if score game_state settings matches 7.. positioned 207 34 -130 run function core:main/game/respawn

# execute if score game_state settings matches 7.. run function chars:all_chars_spells
#execute if score game_state settings matches 7.. run function chars:all



#Initialize lobby parameters into settings + add tag "in_game" for poeple spectating/in_game

execute if score game_state settings matches 1 run function core:main/game/initialize_settings

# Define the types of game from the map type

execute if score game_state settings matches 2 run function battlegrounds:map_settings
execute if score game_state settings matches 2 run scoreboard players set @a[tag=in_game] Loading -1

execute if score game_state settings matches 2 run execute store result bossbar minecraft:purple max run scoreboard players get score_max settings
execute if score game_state settings matches 2 run execute store result bossbar minecraft:yellow max run scoreboard players get score_max settings
#execute unless entity @e[tag=PracticeCharPick] unless entity @e[tag=PracticeRoom] run kill @e[tag=lobby]

execute if score game_state settings matches 2 run team join yellow Yellow
execute if score game_state settings matches 2 run team join purple Purple

execute if score game_state settings matches 2 run tp @a 288 29 -108
execute if score game_state settings matches 2 run scoreboard players set game_state settings 3


# if its "team_select 0" (automatic/casual mode) we skip and the player are selected randomly on state 4 
execute if score game_state settings matches 3 if score team_select lobby matches 0 run scoreboard players set game_state settings 4

# If its "team_select 1" (tournament mode) we tp the player to the "selection room" 
execute if score game_state settings matches 3 if score team_select lobby matches 1 run tp @a[tag=in_game] 288.5 15.00 -107.5
execute if score game_state settings matches 3 if score team_select lobby matches 1 unless entity @a[tag=!in_a_team,tag=in_game] run scoreboard players set game_state settings 4



execute if score game_state settings matches 4 run tp @a[tag=in_game] 198.60 35.00 -130.52
execute if score game_state settings matches 2..4 if score all_random lobby matches 0 as @a[scores={char=0},tag=in_game] run scoreboard players set @s ClassPickTrigger 8

execute if score game_state settings matches 4 run scoreboard players set game_state settings 5

execute if score game_state settings matches 5 as @r[tag=!in_a_team,tag=in_game] run function core:main/game/join_purple
execute if score game_state settings matches 5 as @r[tag=!in_a_team,tag=in_game] run function core:main/game/join_yellow

execute if score game_state settings matches 5 if score all_random lobby matches 0 as @a[scores={char=0},tag=in_game] run function chars:char_select

execute if score game_state settings matches 5 if score all_random lobby matches 1 as @a[scores={char=0},sort=random,tag=in_game] at @s run function core:main/random/random_generate_char

execute if score game_state settings matches 5 run tp @a[scores={char=1..},tag=!waiting_room,tag=in_game] 287.50 15.00 -126.5
execute if score game_state settings matches 5 unless entity @a[tag=!in_a_team,tag=in_game] unless entity @a[scores={char=0},tag=in_game] run scoreboard players set game_state settings 6


#Set respawn to the respawn 
execute if score game_state settings matches 6 run spawnpoint @a[tag=in_game] 207 34 -131

execute if score game_state settings matches 6 run function battlegrounds:setup
execute if score game_state settings matches 6 run function core:main/game/start_game_spawn
execute if score game_state settings matches 6 run scoreboard players set purple score 0
execute if score game_state settings matches 6 run scoreboard players set yellow score 0

execute if score game_state settings matches 7 run function chars:all
execute if score game_state settings matches 7 run scoreboard players set game_state settings 8

execute if score game_state settings matches 8 run function core:score/manage_score


#Game Win management
execute if score game_state settings matches 9 run scoreboard players add loading settings 1
execute if score game_state settings matches 9 if score loading settings matches 160.. run function reset:reset

execute if score game_state settings matches 9 if score purple score >= score_max settings run scoreboard players operation purple score = score_max settings
execute if score game_state settings matches 9 if score yellow score >= score_max settings run scoreboard players operation yellow score = score_max settings

#Anti "leaving" prevention
execute if score game_state settings matches 5 as @a if entity @s[scores={JustLeft=1},tag=in_game] run trigger ClassPickTrigger set 8
execute if score game_state settings matches 6.. as @a if entity @s[scores={JustLeft=1,char=0},tag=in_game] run tag @s remove in_a_team
execute if score game_state settings matches 6.. as @a if entity @s[scores={JustLeft=1,char=0},tag=in_game] run team leave @s
execute if score game_state settings matches 6.. as @a if entity @s[scores={JustLeft=1,char=0},tag=in_game] run tag @s remove in_game

execute as @a if score @s JustLeft matches 1 run scoreboard players set @s JustLeft 0




#kill @e[tag=char_displays]

#This function don't even exist
#execute as @a run function messages:lobby_mess


