scoreboard players enable @a LobbyTrigger
#scoreboard players enable @a GamemodeSelectTrigger

execute if entity @a[scores={LobbyTrigger=1}] run function lobby:score_down
execute if entity @a[scores={LobbyTrigger=2}] run function lobby:score_up
execute if entity @a[scores={LobbyTrigger=3}] run function lobby:score_down_5
execute if entity @a[scores={LobbyTrigger=4}] run function lobby:score_up_5
execute if entity @a[scores={LobbyTrigger=5}] run function lobby:map_choose_1
execute if entity @a[scores={LobbyTrigger=6}] run function lobby:map_choose_2
execute if entity @a[scores={LobbyTrigger=7}] run function lobby:map_choose_3
execute if entity @a[scores={LobbyTrigger=8}] run function lobby:map_choose_4
execute if entity @a[scores={LobbyTrigger=9}] run function lobby:map_choose_5
execute if entity @a[scores={LobbyTrigger=10}] run function lobby:map_choose_6
execute if entity @a[scores={LobbyTrigger=11}] run function lobby:map_choose_7
execute if entity @a[scores={LobbyTrigger=12}] run function lobby:map_choose_8
execute if entity @a[scores={LobbyTrigger=13}] run function lobby:map_choose_9
execute if entity @a[scores={LobbyTrigger=14}] run function lobby:map_choose_10
execute if entity @a[scores={LobbyTrigger=15}] run function lobby:map_choose_11
execute if entity @a[scores={LobbyTrigger=16}] run function lobby:map_choose_12
execute if entity @a[scores={LobbyTrigger=17}] run function lobby:map_choose_13
execute if entity @a[scores={LobbyTrigger=18}] run function lobby:map_choose_14
execute if entity @a[scores={LobbyTrigger=19}] run function lobby:map_choose_15
execute if entity @a[scores={LobbyTrigger=20}] run function lobby:map_choose_16
execute if entity @a[scores={LobbyTrigger=21}] run function lobby:map_choose_17
execute if entity @a[scores={LobbyTrigger=22}] run function lobby:map_choose_18
execute if entity @a[scores={LobbyTrigger=23}] run function lobby:map_choose_19
execute if entity @a[scores={LobbyTrigger=24}] run function lobby:map_choose_20
execute if entity @a[scores={LobbyTrigger=25}] run function lobby:map_choose_21
execute if entity @a[scores={LobbyTrigger=26}] run function lobby:map_choose_22
execute if entity @a[scores={LobbyTrigger=100}] run function lobby:respawn_timer_down
execute if entity @a[scores={LobbyTrigger=101}] run function lobby:respawn_timer_up
execute if entity @a[scores={LobbyTrigger=104}] run function lobby:flag_countdown_down
execute if entity @a[scores={LobbyTrigger=105}] run function lobby:flag_countdown_up

execute at @a[scores={LobbyTrigger=1..}] run playsound minecraft:block.lever.click master @a[scores={LobbyTrigger=1..}] ~ ~ ~ 1 2 1
execute as @a[scores={LobbyTrigger=5..99}] run function messages:lobby_map_info
execute as @a[scores={LobbyTrigger=201..210}] run function messages:lobby_map_info_main

execute at @a[scores={LobbyTrigger=102}] run kill @e[tag=wav_mode]
execute at @a[scores={LobbyTrigger=103}] run summon minecraft:marker 209 4 -118 {Tags:["wav_mode"]}
execute at @a[scores={LobbyTrigger=104}] run scoreboard players set @e[tag=GameStart] Memorize 0
execute at @a[scores={LobbyTrigger=105}] run scoreboard players set @e[tag=GameStart] Memorize 1


execute as @a[scores={LobbyTrigger=102..105}] run function lobby:options

scoreboard players set @a LobbyTrigger 0

