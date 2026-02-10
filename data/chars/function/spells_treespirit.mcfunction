kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_axe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_shovel"}}]


#passive
effect give @a[scores={char=16,passive_tree=1..,passive_tree_1=0}] resistance 2 0
scoreboard players set @a[scores={passive_tree=1..,passive_tree_1=0}] passive_tree_1 100
scoreboard players set @a[scores={passive_tree=1..}] passive_tree 0
scoreboard players remove @a[scores={passive_tree_1=1..}] passive_tree_1 1

#branch smash
scoreboard players set @a[scores={char=16,s1_timer=1}] treespirit_empower 1
execute at @a[scores={char=16,s1_timer=1}] run playsound entity.creaking.activate master @a[distance=..10] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=16,treespirit_empower=2..}] run playsound entity.zombie.break_wooden_door master @a[distance=..10] ~ ~ ~ 1 1.4 1
clear @a[scores={char=16,treespirit_empower=2..}] wooden_shovel
scoreboard players set @a[scores={char=16,treespirit_empower=2..}] treespirit_empower 0

execute at @a[scores={char=16,treespirit_empower=1}] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~1 ~ 0.3 0.5 0.3 0.1 3

#green wind

scoreboard players set @a[scores={char=16,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=16,s2_timer=1,CC_silence=1..}] s2_timer 160

execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=16,s2_timer=1..3,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..12] ~ ~ ~ 1 1.3 1
execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.5 ~ 4 1 4 0.1 60
execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.1 ~ 4 1 4 0.1 200
execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] run particle falling_spore_blossom ~ ~0.1 ~ 4 2 4 0.1 300
execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] as @a[distance=..6,tag=valid_spell_target] if score @s Team = @p[scores={char=16}] Team run effect give @s instant_health
execute at @a[scores={char=16,s2_timer=1,CC_silence=0}] as @a[distance=..6,tag=valid_spell_target] if score @s Team = @p[scores={char=16}] Team run effect give @s regeneration 4 1

# tree spirit

scoreboard players set @a[scores={s1_timer=1,char=16}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=16}] s1_timer 1
scoreboard players set @a[scores={s1_timer=241..,char=16}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=16}] spellCD2 180
scoreboard players add @a[scores={s2_timer=1..,char=16}] s2_timer 1
scoreboard players set @a[scores={s2_timer=181..,char=16}] s2_timer 0

execute as @a[scores={char=16,treespirit_empower=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_axe",Slot:0b}]}] run clear @a[scores={char=16}] wooden_axe
execute as @a[scores={char=16,treespirit_empower=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_shovel",Slot:0b}]}] run clear @a[scores={char=16}] wooden_shovel
item replace entity @a[scores={char=16,treespirit_empower=0}] hotbar.0 with wooden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Branch"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
item replace entity @a[scores={char=16,treespirit_empower=1}] hotbar.0 with wooden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Branch"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:knockback":3},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=16,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=16}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=16,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:pitcher_pod",minecraft:custom_name={text:"Branch Smash",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=16,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=16}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=16,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:oak_sapling",minecraft:custom_name={text:"Green Wind",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
