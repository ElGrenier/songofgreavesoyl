effect clear @s
clear @s
gamemode adventure @s

tag @a remove EnterPracticeRoom
tag @a remove PracticeCharPick
tag @a remove PracticeRoom

scoreboard players set @s CC_noflag 0
scoreboard players set @s Confirm 0
scoreboard players set @s ReqConfirm 0

scoreboard players set @s char 0
function core:main/char_scores_reset


kill @e[type=item]

title @a actionbar {text:"  ",type:"text"}


scoreboard players set @s LobbyTrigger 0
scoreboard players enable @s LobbyTrigger


scoreboard players set @s JustLeft 0
scoreboard players set @s CtfLeft 0

attribute @s movement_speed base set 0.1
attribute @s knockback_resistance base set 0.0
tag @s remove wav_mode_buff

function ctf:initiate_stats

# end mark