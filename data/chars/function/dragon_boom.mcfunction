execute if entity @a[scores={char=7,CC_silence=0}] run particle minecraft:flame ~ ~ ~ 1.2 1.2 1.2 0.01 420 force
execute if entity @a[scores={char=7,CC_silence=0}] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1.0 2.0 0.5
execute if entity @a[scores={char=7},team=yellow] run tag @a[distance=..3,team=purple] add boomTag
execute if entity @a[scores={char=7},team=purple] run tag @a[distance=..3,team=yellow] add boomTag
tag @e[nbt={CustomName:"Licznik"}] add licz
execute if entity @a[scores={char=7,CC_silence=0},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:instant_damage 1
execute if entity @a[scores={char=7,CC_silence=0},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:instant_damage 1
