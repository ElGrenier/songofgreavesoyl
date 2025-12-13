
scoreboard players add @a[scores={arrowcd=1..,CC_exhaust=0}] arrowcd_1 2
scoreboard players add @a[scores={arrowcd=1..,CC_exhaust=1..}] arrowcd_1 1


scoreboard players set @a[scores={spell_shot_3=1..,arrowcd_1=1..20}] arrowcd_1 21
scoreboard players add @a[scores={crossbowcd=1..,CC_exhaust=0}] arrowcd_1 2
scoreboard players add @a[scores={crossbowcd=1..,CC_exhaust=1..}] arrowcd_1 1


scoreboard players add @a[scores={tridentcd=1..,CC_exhaust=0}] tridentcd_1 2
scoreboard players add @a[scores={tridentcd=1..,CC_exhaust=1..}] tridentcd_1 1


kill @e[type=minecraft:arrow,tag=!dragonshot_ar,nbt={inGround:1b}]
kill @e[type=minecraft:trident,nbt={inGround:1b}]

item replace entity @a[scores={char=2,arrowcd_1=20..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=2,arrowcd_1=20..}] arrowcd 0
scoreboard players set @a[scores={char=2,arrowcd_1=20..}] arrowcd_1 0

item replace entity @a[scores={char=7,arrowcd_1=40..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=7,arrowcd_1=40..}] arrowcd 0
scoreboard players set @a[scores={char=7,arrowcd_1=40..}] arrowcd_1 0

item replace entity @a[scores={char=17,tridentcd_1=30..},tag=techno_ranged] weapon.offhand with minecraft:trident[minecraft:custom_name={bold:1b,color:"gray",text:"Harpoon (Ranged)"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:0.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.99d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
scoreboard players set @a[scores={char=17,tridentcd_1=30..}] tridentcd 0
scoreboard players set @a[scores={char=17,tridentcd_1=30..}] tridentcd_1 0

item replace entity @a[scores={char=11,arrowcd_1=30..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=11,arrowcd_1=31..}] arrowcd 0
scoreboard players set @a[scores={char=11,arrowcd_1=31..}] arrowcd_1 0

#item replace entity @a[tag=!cannonmode,scores={char=18,arrowcd_1=40..}] hotbar.8 with minecraft:arrow 1
#clear @a[scores={char=18,arrowcd_1=39..}] minecraft:crossbow
##item replace entity @a[tag=cannonmode,scores={char=18,arrowcd_1=40..}] hotbar.0 with minecraft:crossbow[minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:1,duration:1,show_particles:1b,show_icon:0b}]}}}]] 1
#scoreboard players set @a[scores={char=18,arrowcd_1=40..}] crossbowcd 0
##scoreboard players set @a[scores={char=18,arrowcd_1=40..}] arrowcd 0
#scoreboard players set @a[scores={char=18,arrowcd_1=40..}] arrowcd_1 0

clear @a[scores={char=26,arrowcd_1=59..}] minecraft:crossbow
item replace entity @a[scores={char=26,arrowcd_1=60..}] hotbar.0 with minecraft:crossbow[minecraft:custom_name={bold:1b,color:"gray",text:"Energy Bolt Weapon"},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] 1
scoreboard players set @a[scores={char=26,arrowcd_1=60..}] crossbowcd 0
scoreboard players set @a[scores={char=26,arrowcd_1=60..}] arrowcd_1 0

item replace entity @a[scores={char=34,arrowcd_1=60..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=34,arrowcd_1=60..}] arrowcd 0
scoreboard players set @a[scores={char=34,arrowcd_1=60..}] arrowcd_1 0

item replace entity @a[scores={char=41,arrowcd_1=30..}] hotbar.8 with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:4806976,custom_effects:[{id:"minecraft:unluck",amplifier:0b,duration:500,show_particles:0b}]},minecraft:custom_name="Crawler venom"] 1
scoreboard players set @a[scores={char=41,arrowcd_1=30..}] arrowcd 0
scoreboard players set @a[scores={char=41,arrowcd_1=30..}] arrowcd_1 0

item replace entity @a[scores={char=50,arrowcd_1=20..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=50,arrowcd_1=20..}] arrowcd 0
scoreboard players set @a[scores={char=50,arrowcd_1=20..}] arrowcd_1 0

item replace entity @a[scores={char=60,arrowcd_1=60..}] hotbar.8 with minecraft:arrow 1
scoreboard players set @a[scores={char=60,arrowcd_1=60..}] arrowcd 0
scoreboard players set @a[scores={char=60,arrowcd_1=60..}] arrowcd_1 0

#arrowdrop

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow",count:1}}]

execute as @a[scores={char=2,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:arrow"}]}] run clear @a[scores={char=2}] arrow
item replace entity @a[scores={char=2,arrowcd=0}] hotbar.8 with arrow

execute as @a[scores={char=7,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=7}] minecraft:arrow
item replace entity @a[scores={char=7,arrowcd=0}] hotbar.8 with minecraft:arrow

execute as @a[scores={char=11,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=11}] minecraft:arrow
item replace entity @a[scores={char=11,arrowcd=0}] hotbar.8 with minecraft:arrow

#execute as @a[tag=!cannonmode,scores={char=18,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=18}] minecraft:arrow
#item replace entity @a[tag=!cannonmode,scores={char=18,arrowcd=0}] hotbar.8 with minecraft:arrow

execute as @a[scores={char=34,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=34}] minecraft:arrow
item replace entity @a[scores={char=34,arrowcd=0}] hotbar.8 with minecraft:arrow

execute as @a[scores={char=41,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Slot:8b}]}] run clear @a[scores={char=41}] minecraft:tipped_arrow
item replace entity @a[scores={char=41,arrowcd=0}] hotbar.8 with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:4806976,custom_effects:[{id:"minecraft:unluck",amplifier:0b,duration:500,show_particles:0b}]},minecraft:custom_name="Crawler venom"] 1

execute as @a[tag=faceless,scores={char=50,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=50}] minecraft:arrow
item replace entity @a[tag=faceless,scores={char=50,arrowcd=0}] hotbar.8 with minecraft:arrow

execute as @a[scores={char=60,arrowcd=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",Slot:8b}]}] run clear @a[scores={char=60}] minecraft:arrow
item replace entity @a[scores={char=60,arrowcd=0,spell_fath_1_1=0}] hotbar.8 with minecraft:arrow
