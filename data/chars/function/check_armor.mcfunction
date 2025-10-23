kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots"}}]

execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.head minecraft:player_head run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.chest minecraft:leather_chestplate run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.legs minecraft:leather_leggings run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.feet minecraft:leather_boots run function chars:armors






