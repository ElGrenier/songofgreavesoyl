execute if entity @e[tag=Settings,scores={Map=1}] run tp @a[scores={char=9}] ~ 13 ~
execute if entity @e[tag=Settings,scores={Map=2}] run tp @a[scores={char=9}] ~ 15 ~
scoreboard players set @a[scores={char=9}] burrowed 0
scoreboard players set @a[scores={char=9}] passive_craw 0
scoreboard players set @a[scores={char=9}] burrow_dur 0
effect clear @a[scores={char=9}] minecraft:speed
effect clear @a[scores={char=9}] minecraft:night_vision
effect clear @a[scores={char=9}] minecraft:invisibility
execute at @e[scores={char=9},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:slowness 3 6
execute at @e[scores={char=9},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:slowness 3 6
execute at @e[scores={char=9},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:jump_boost 3 128
execute at @e[scores={char=9},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:jump_boost 3 128
execute at @a[scores={char=9}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 3 0.5 3 0.01 1000 force
execute at @a[scores={char=9}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 1.0 1.0 1.0