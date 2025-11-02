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

#moved from initiate_game
scoreboard players set @s StatKills 0
scoreboard players set @a StatKillsN 0
scoreboard players set @a StatDeaths 0
scoreboard players set @a StatNeutralified 0
scoreboard players set @a StatCaptured 0


execute at @e[tag=fireremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:fire
execute at @e[tag=fireremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:soul_fire
kill @e[tag=fireremove]
execute at @e[tag=wallremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:ice
kill @e[tag=wallremove]
execute at @e[tag=tomb] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:air replace minecraft:blue_ice
kill @e[tag=tomb]
kill @e[tag=stray_snare]

kill @e[tag=WarperMarker]
kill @e[tag=void_gate]
kill @e[tag=void_gate_return]

kill @e[type=minecraft:item]

title @a actionbar {text:"  ",type:"text"}



scoreboard players set @s spell_guardian_1 0
scoreboard players set @s spell_guardian_2 0
scoreboard players set @s spell_guardian_3 0
scoreboard players set @s spell_guardian_4 0
scoreboard players set @s guardian_mark 0
scoreboard players set @s guardian_mark_dh 0
scoreboard players set @s killedByDragon 0

scoreboard players set @s LobbyTrigger 0
scoreboard players enable @s LobbyTrigger
scoreboard players set @s KillRestriction 0
scoreboard players set @s KillRestriction2 0

scoreboard players set @s JustLeft 0
scoreboard players set @s CtfLeft 0


attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:knockback_resistance base set 0.0
tag @s remove wav_mode_buff

function ctf:initiate_stats

# end mark