
scoreboard players add @a[scores={arrowcd=1..,CC_exhaust=0}] arrowcd_1 2
scoreboard players add @a[scores={arrowcd=1..,CC_exhaust=1..}] arrowcd_1 1


scoreboard players set @a[scores={spell_shot_3=1..,arrowcd_1=1..20}] arrowcd_1 21
scoreboard players add @a[scores={crossbowcd=1..,CC_exhaust=0}] arrowcd_1 2
scoreboard players add @a[scores={crossbowcd=1..,CC_exhaust=1..}] arrowcd_1 1


scoreboard players add @a[scores={tridentcd=1..,CC_exhaust=0}] tridentcd_1 2
scoreboard players add @a[scores={tridentcd=1..,CC_exhaust=1..}] tridentcd_1 1


kill @e[type=minecraft:arrow,tag=!dragonshot_ar,nbt={inGround:1b}]
kill @e[type=minecraft:trident,nbt={inGround:1b}]


scoreboard players set @a[scores={char=2,arrowcd_1=20..}] arrowcd 0
scoreboard players set @a[scores={char=2,arrowcd_1=20..}] arrowcd_1 0


scoreboard players set @a[scores={char=7,arrowcd_1=40..}] arrowcd 0
scoreboard players set @a[scores={char=7,arrowcd_1=40..}] arrowcd_1 0

scoreboard players set @a[scores={char=17,tridentcd_1=30..}] tridentcd 0
scoreboard players set @a[scores={char=17,tridentcd_1=30..}] tridentcd_1 0

item replace entity @a[scores={char=11,arrowcd_1=30..}] hotbar.8 with arrow 1
scoreboard players set @a[scores={char=11,arrowcd_1=31..}] arrowcd 0
scoreboard players set @a[scores={char=11,arrowcd_1=31..}] arrowcd_1 0

scoreboard players set @a[scores={char=34,arrowcd_1=60..}] arrowcd 0
scoreboard players set @a[scores={char=34,arrowcd_1=60..}] arrowcd_1 0

scoreboard players set @a[scores={char=41,arrowcd_1=30..}] arrowcd 0
scoreboard players set @a[scores={char=41,arrowcd_1=30..}] arrowcd_1 0

scoreboard players set @a[scores={char=50,arrowcd_1=20..}] arrowcd 0
scoreboard players set @a[scores={char=50,arrowcd_1=20..}] arrowcd_1 0

scoreboard players set @a[scores={char=60,arrowcd_1=60..}] arrowcd 0
scoreboard players set @a[scores={char=60,arrowcd_1=60..}] arrowcd_1 0

scoreboard players set @a[scores={char=73,arrowcd_1=60..}] arrowcd 0
scoreboard players set @a[scores={char=73,arrowcd_1=60..}] arrowcd_1 0


#arrowdrop

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:tipped_arrow"}}]

execute as @a[scores={char=2,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:arrow"}]}] run clear @a[scores={char=2}] arrow
item replace entity @a[scores={char=2,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Arrow"}]

execute as @a[scores={char=7,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=7}] arrow
item replace entity @a[scores={char=7,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Flames"},item_model="minecraft:blaze_powder"]

execute as @a[scores={char=11,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=11}] arrow
item replace entity @a[scores={char=11,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Energy Cell"},item_model="minecraft:breeze_rod"]

execute as @a[scores={char=34,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=34}] arrow
item replace entity @a[scores={char=34,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Raindrops"},item_model="minecraft:potion"]

execute as @a[scores={char=41,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Slot:8b}]}] run clear @a[scores={char=41}] tipped_arrow
item replace entity @a[scores={char=41,arrowcd=0}] hotbar.8 with tipped_arrow[custom_name={bold:1b,color:"gray",text:"Crawler Venom"},item_model="minecraft:splash_potion",minecraft:potion_contents={custom_color:4806976,custom_effects:[{id:"minecraft:unluck",amplifier:0b,duration:500,show_particles:0b}]}] 1

execute as @a[tag=faceless,scores={char=50,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=50}] arrow
item replace entity @a[tag=faceless,scores={char=50,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Dust"},item_model="minecraft:gray_dye"]

execute as @a[scores={char=60,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=60}] arrow
item replace entity @a[scores={char=60,arrowcd=0}] hotbar.8 with arrow[custom_name={bold:1b,color:"gray",text:"Stardust"},item_model="minecraft:nether_star",enchantment_glint_override=true]

execute as @a[scores={char=73,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=60}] arrow
item replace entity @a[scores={char=73,arrowcd=0}] hotbar.8 with tipped_arrow[custom_name={bold:1b,color:"gray",text:"Electric Charge"},item_model="minecraft:experience_bottle",enchantment_glint_override=true,minecraft:potion_contents={custom_color:4806976,custom_effects:[{id:"minecraft:conduit_power",amplifier:0b,duration:100,show_particles:0b}]}] 1
