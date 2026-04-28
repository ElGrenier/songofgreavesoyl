scoreboard players enable @a LobbyTrigger
scoreboard players enable @a trigger_respawn
scoreboard players enable @a trigger_flag_max_countdown
scoreboard players enable @a trigger_dmscore
scoreboard players enable @a trigger_ctfscore
scoreboard players enable @a trigger_acscore

#scoreboard players enable @a GamemodeSelectTrigger

execute if entity @a[scores={LobbyTrigger=1}] run function messages:settings/activate_all_random
execute if entity @a[scores={LobbyTrigger=2}] run function messages:settings/desactivate_all_random
# execute if entity @a[scores={LobbyTrigger=3}] run function core:lobby/parameters/
# execute if entity @a[scores={LobbyTrigger=4}] run function core:lobby/parameters/
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
execute if entity @a[scores={LobbyTrigger=27}] run function core:lobby/map/map_choose_23
execute if entity @a[scores={LobbyTrigger=28}] run function core:lobby/map/map_choose_24
execute if entity @a[scores={LobbyTrigger=29}] run function core:lobby/map/map_choose_25
execute if entity @a[scores={LobbyTrigger=30}] run function core:lobby/map/map_choose_26
execute if entity @a[scores={LobbyTrigger=31}] run function core:lobby/map/map_choose_27
execute if entity @a[scores={LobbyTrigger=32}] run function core:lobby/map/map_choose_28
execute if entity @a[scores={LobbyTrigger=33}] run function core:lobby/map/map_choose_29
execute if entity @a[scores={LobbyTrigger=34}] run function core:lobby/map/map_choose_30
# execute if entity @a[scores={LobbyTrigger=101}] run function core:lobby/parameters/
# execute if entity @a[scores={LobbyTrigger=104}] run function core:lobby/parameters/
# execute if entity @a[scores={LobbyTrigger=105}] run function core:lobby/parameters/

#execute at @a[scores={LobbyTrigger=1..199}] run playsound block.lever.click master @a[scores={LobbyTrigger=1..199}] ~ ~ ~ 1 2 1
execute as @a[scores={LobbyTrigger=200..210}] run function messages:lobby_map_info_main

execute at @a[scores={LobbyTrigger=102}] run function messages:settings/desactivate_wav_mode
execute at @a[scores={LobbyTrigger=103}] run function messages:settings/activate_wav_mode
execute at @a[scores={LobbyTrigger=104}] run function messages:settings/desactivate_memory
execute at @a[scores={LobbyTrigger=105}] run function messages:settings/activate_memory
execute at @a[scores={LobbyTrigger=106}] run function messages:settings/desactivate_choose_team
execute at @a[scores={LobbyTrigger=107}] run function messages:settings/activate_choose_team

#un-checkmark-fied options
execute as @a[scores={LobbyTrigger=110..140}] run function core:lobby/options
#all random ON/OFF
execute as @a[scores={LobbyTrigger=122}] run scoreboard players set all_random lobby 1
execute as @a[scores={LobbyTrigger=123}] run scoreboard players set all_random lobby 0
#wavmode ON/OFF
execute as @a[scores={LobbyTrigger=125}] run scoreboard players set wav_mode settings 1
execute as @a[scores={LobbyTrigger=126}] run scoreboard players set wav_mode settings 0
execute as @a[scores={LobbyTrigger=125}] run scoreboard players set wav_mode lobby 1
execute as @a[scores={LobbyTrigger=126}] run scoreboard players set wav_mode lobby 0
#all random ON/OFF
execute as @a[scores={LobbyTrigger=128}] run scoreboard players set memorize lobby 1
execute as @a[scores={LobbyTrigger=129}] run scoreboard players set memorize lobby 0
#pve difficulty
execute as @a[scores={LobbyTrigger=130}] run scoreboard players set difficulty lobby 0
execute as @a[scores={LobbyTrigger=131}] run scoreboard players set difficulty lobby 1
execute as @a[scores={LobbyTrigger=132}] run scoreboard players set difficulty lobby 2
execute as @a[scores={LobbyTrigger=133}] run scoreboard players set difficulty lobby 3
execute as @a[scores={LobbyTrigger=134}] run scoreboard players set difficulty lobby 4
#manual/random team selection
execute as @a[scores={LobbyTrigger=136}] run scoreboard players set team_select lobby 1
execute as @a[scores={LobbyTrigger=137}] run scoreboard players set team_select lobby 0



execute as @a[scores={trigger_respawn=1..}] run function core:lobby/calculate_respawn
execute as @a[scores={trigger_flag_max_countdown=1..}] run function core:lobby/calculate_flag
execute as @a[scores={trigger_dmscore=1..}] run function messages:settings/dm_score
execute as @a[scores={trigger_ctfscore=1..}] run function messages:settings/ctf_score
execute as @a[scores={trigger_acscore=1..}] run function messages:settings/altars_score

execute as @a[scores={trigger_respawn=1..}] run scoreboard players set @s trigger_respawn 0
execute as @a[scores={trigger_flag_max_countdown=1..}] run scoreboard players set @s trigger_flag_max_countdown 0
execute as @a[scores={trigger_dmscore=1..}] run scoreboard players set @s trigger_dmscore 0
execute as @a[scores={trigger_ctfscore=1..}] run scoreboard players set @s trigger_ctfscore 0
execute as @a[scores={trigger_acscore=1..}] run scoreboard players set @s trigger_acscore 0
scoreboard players set @a LobbyTrigger 0

