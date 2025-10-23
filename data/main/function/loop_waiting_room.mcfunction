
# old legacy code which is still used, but i don't know how it works
function main:queue
effect give @a[distance=..12] minecraft:instant_health 1 1 true
scoreboard players set @a[distance=..15,scores={char=10}] passive_krak 0


scoreboard players set @a[distance=..20] CC_silence 3

tag @a[distance=..20] add waiting_room
tag @a[distance=21..] remove waiting_room

# final confirmation
execute if entity @a[distance=..12,scores={Outsider=0}] unless entity @a[distance=12..,scores={Outsider=0}] unless entity @a[scores={char=0,Outsider=0}] run tp @a[distance=..12,scores={Outsider=0}] 236.5 35 -131.5
