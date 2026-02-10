kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:weapon"}}]


# passive



# s1



# s2



# character name


scoreboard players set @a[scores={s1_timer=1,char=2137}] spellCD1 100
scoreboard players add @a[scores={s1_timer=1..,char=2137}] s1_timer 1
scoreboard players set @a[scores={s1_timer=100..,char=2137}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=2137}] spellCD2 100
scoreboard players add @a[scores={s2_timer=1..,char=2137}] s2_timer 1
scoreboard players set @a[scores={s2_timer=100..,char=2137}] s2_timer 0

execute as @a[scores={char=2137}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b}]}] run clear @a[scores={char=2137}] iron_sword
item replace entity @a[scores={char=2137}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Weapon"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1


execute as @a[scores={char=2137,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=2137}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=2137,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:red_wool",minecraft:custom_name={text:"S1",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=2137,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=2137}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=2137,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:green_wool",minecraft:custom_name={text:"S2",color:"dark_aqua",bold:1b}] 1
