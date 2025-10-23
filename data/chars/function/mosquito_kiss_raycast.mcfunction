particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 0.2 0.2 0.2 0.01 3 normal

execute if entity @a[scores={char=64},team=yellow] run tag @a[distance=..1.5,team=purple] add mosquito_bite
execute if entity @a[scores={char=64},team=purple] run tag @a[distance=..1.5,team=yellow] add mosquito_bite


execute unless entity @a[tag=mosquito_bite] positioned ^ ^ ^1 if entity @s[distance=..20] run function chars:mosquito_kiss_raycast