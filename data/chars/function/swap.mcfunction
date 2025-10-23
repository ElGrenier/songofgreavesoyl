execute at @a[scores={char=8}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["SwapMarker"]}
tp @a[scores={char=8},team=yellow] @p[distance=..12,scores={burrowed=0},team=purple]
tp @a[scores={char=8},team=purple] @p[distance=..12,scores={burrowed=0},team=yellow]
execute at @a[scores={char=8},team=purple] run tp @p[distance=..2,team=yellow] @e[tag=SwapMarker,limit=1]
execute at @a[scores={char=8},team=yellow] run tp @p[distance=..2,team=purple] @e[tag=SwapMarker,limit=1]
execute at @a[scores={char=8}] run kill @e[tag=SwapMarker]