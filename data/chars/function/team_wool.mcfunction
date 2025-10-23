execute as @a[team=purple] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:purple_wool",Slot:5b}]}] run clear @s minecraft:purple_wool
execute as @a[team=purple] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:purple_wool",Slot:5b}]}] run item replace entity @s hotbar.5 with minecraft:purple_wool[minecraft:custom_name={text:"Team Purple",color:"dark_purple",bold:1b}] 1

execute as @a[team=yellow] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:yellow_wool",Slot:5b}]}] run clear @s minecraft:yellow_wool
execute as @a[team=yellow] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:yellow_wool",Slot:5b}]}] run item replace entity @s hotbar.5 with minecraft:yellow_wool[minecraft:custom_name={text:"Team Yellow",color:"gold",bold:1b}] 1

clear @a[team=purple] minecraft:yellow_wool
clear @a[team=yellow] minecraft:purple_wool
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_wool"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_wool"}}]