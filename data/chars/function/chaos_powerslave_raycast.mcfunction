particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0.001 1 force
particle sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.1 1 force
particle sculk_charge_pop ~ ~ ~ 0.5 0.5 0.5 0.001 1 force
particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.6 0.6 0.6 0.1 3 force
playsound entity.player.attack.sweep master @a[distance=..6] ~ ~ ~ 0.3 0.4 1
execute as @e[distance=..2.5,tag=valid_spell_target] if score @s Team = @p[scores={char=50}] Team unless score @s char matches 50 run scoreboard players set @s powerslave 100
execute as @e[distance=..2.5,tag=valid_spell_target] if score @s Team = @p[scores={char=50}] Team unless score @s char matches 50 run damage @s 0.000000000000000001
execute positioned ^ ^ ^0.5 if entity @s[distance=..12] if block ~ ~ ~ #dash run function chars:chaos_powerslave_raycast