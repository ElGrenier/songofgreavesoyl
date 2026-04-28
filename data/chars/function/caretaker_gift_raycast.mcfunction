particle entity_effect{color:[1.0,0.33,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 0.01 1 force @a[scores={char=72}]
particle block{block_state:{Name:honey_block}} ~ ~ ~ 0.8 0.8 0.8 0 2 force @a[scores={char=72}]

execute as @e[distance=..2.5,tag=valid_spell_target] if score @s Team = @p[scores={char=72}] Team unless score @s char matches 72 run tag @s add caretaker_heal

execute unless entity @a[tag=caretaker_heal] positioned ^ ^ ^0.5 if entity @s[distance=..6] if block ~ ~ ~ #dash run function chars:caretaker_gift_raycast