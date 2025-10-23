execute if entity @a[scores={Winner=1}] run effect give @a minecraft:regeneration 30 10 true
execute if entity @a[scores={Winner=1}] run effect give @a minecraft:resistance 30 10 true

execute if entity @a[scores={Winner=1}] run scoreboard players set @e Score 30
execute if entity @a[scores={Winner=1}] run scoreboard players add @e[tag=Settings] Loading 1
execute if entity @e[tag=Settings,scores={Loading=160..}] run function main:reset

#execute if entity @a[scores={Team=1,Winner=1}] run say Purple team won
#execute if entity @a[scores={Team=-1,Winner=1}] run say Yellow team won