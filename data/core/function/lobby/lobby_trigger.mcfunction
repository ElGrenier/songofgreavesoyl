scoreboard players enable @a LobbyTrigger
#scoreboard players enable @a GamemodeSelectTrigger

execute if entity @a[scores={LobbyTrigger=1}] run function core:lobby/parameters/score_down
execute if entity @a[scores={LobbyTrigger=2}] run function core:lobby/parameters/score_up
execute if entity @a[scores={LobbyTrigger=3}] run function core:lobby/parameters/score_down_5
execute if entity @a[scores={LobbyTrigger=4}] run function core:lobby/parameters/score_up_5
execute if entity @a[scores={LobbyTrigger=5}] run function core:lobby/map/map_choose_1
execute if entity @a[scores={LobbyTrigger=6}] run function core:lobby/map/map_choose_2
execute if entity @a[scores={LobbyTrigger=7}] run function core:lobby/map/map_choose_3
execute if entity @a[scores={LobbyTrigger=8}] run function core:lobby/map/map_choose_4
execute if entity @a[scores={LobbyTrigger=9}] run function core:lobby/map/map_choose_5
execute if entity @a[scores={LobbyTrigger=10}] run function core:lobby/map/map_choose_6
execute if entity @a[scores={LobbyTrigger=11}] run function core:lobby/map/map_choose_7
execute if entity @a[scores={LobbyTrigger=12}] run function core:lobby/map/map_choose_8
execute if entity @a[scores={LobbyTrigger=13}] run function core:lobby/map/map_choose_9
execute if entity @a[scores={LobbyTrigger=14}] run function core:lobby/map/map_choose_10
execute if entity @a[scores={LobbyTrigger=15}] run function core:lobby/map/map_choose_11
execute if entity @a[scores={LobbyTrigger=16}] run function core:lobby/map/map_choose_12
execute if entity @a[scores={LobbyTrigger=17}] run function core:lobby/map/map_choose_13
execute if entity @a[scores={LobbyTrigger=18}] run function core:lobby/map/map_choose_14
execute if entity @a[scores={LobbyTrigger=19}] run function core:lobby/map/map_choose_15
execute if entity @a[scores={LobbyTrigger=20}] run function core:lobby/map/map_choose_16
execute if entity @a[scores={LobbyTrigger=21}] run function core:lobby/map/map_choose_17
execute if entity @a[scores={LobbyTrigger=22}] run function core:lobby/map/map_choose_18
execute if entity @a[scores={LobbyTrigger=23}] run function core:lobby/map/map_choose_19
execute if entity @a[scores={LobbyTrigger=24}] run function core:lobby/map/map_choose_20
execute if entity @a[scores={LobbyTrigger=25}] run function core:lobby/map/map_choose_21
execute if entity @a[scores={LobbyTrigger=26}] run function core:lobby/map/map_choose_22
execute if entity @a[scores={LobbyTrigger=100}] run function core:lobby/parameters/respawn_timer_down
execute if entity @a[scores={LobbyTrigger=101}] run function core:lobby/parameters/respawn_timer_up
execute if entity @a[scores={LobbyTrigger=104}] run function core:lobby/parameters/flag_countdown_down
execute if entity @a[scores={LobbyTrigger=105}] run function core:lobby/parameters/flag_countdown_up

execute at @a[scores={LobbyTrigger=1..}] run playsound minecraft:block.lever.click master @a[scores={LobbyTrigger=1..}] ~ ~ ~ 1 2 1
execute as @a[scores={LobbyTrigger=5..99}] run function messages:lobby_map_info
execute as @a[scores={LobbyTrigger=201..210}] run function messages:lobby_map_info_main

execute at @a[scores={LobbyTrigger=102}] run scoreboard players set wav_mode lobby 0
execute at @a[scores={LobbyTrigger=103}] run scoreboard players set wav_mode lobby 1
execute at @a[scores={LobbyTrigger=104}] run scoreboard players set memorize lobby 0
execute at @a[scores={LobbyTrigger=105}] run scoreboard players set memorize lobby 1


execute as @a[scores={LobbyTrigger=102..105}] run function core:lobby/options

scoreboard players set @a LobbyTrigger 0

