particle smoke ~ ~ ~ 0.2 0.2 0.2 0.01 1 force

execute positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=64}] Team run tag @s add mosquito_bite

execute unless entity @a[tag=warper_blink] positioned ^ ^ ^0.2 unless entity @s[distance=..20] if block ~ ~ ~ #dash run summon marker ^ ^ ^-0.5 {Tags:["warper_blink","entities_warper"]}
execute unless entity @a[tag=warper_blink] positioned ^ ^ ^0.2 if entity @s[distance=..20] unless block ~ ~ ~ #dash run summon marker ^ ^ ^-0.5 {Tags:["warper_blink","entities_warper"]}
execute unless entity @a[tag=warper_blink] positioned ^ ^ ^0.2 if entity @s[distance=..20] if entity @e[tag=enemy_of_the_wrapper,distance=..2] if block ~ ~ ~ #dash run summon marker ~ ~ ~ {Tags:["warper_blink","entities_warper"]}
execute unless entity @a[tag=warper_blink] positioned ^ ^ ^0.2 if entity @s[distance=..20] if block ~ ~ ~ #dash run function chars:wrapper_blink_raycast