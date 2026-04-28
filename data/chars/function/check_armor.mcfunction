kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]

execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.head player_head run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.chest leather_chestplate run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.legs leather_leggings run function chars:armors
execute as @a[tag=!invisible,scores={char=1..}] at @s unless items entity @s armor.feet leather_boots run function chars:armors


# auto armor update

execute as @a[scores={char=1..}] unless score @s armor_char = @s char run effect clear @s
execute as @a[scores={char=1..}] unless score @s armor_char = @s char run clear @s
execute as @a[scores={char=1..}] unless score @s armor_char = @s char run function chars:armors
execute as @a[scores={char=1..}] run scoreboard players operation @s armor_char = @s char

