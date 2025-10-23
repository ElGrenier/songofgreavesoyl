kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dried_kelp"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:clay_ball"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe"}}]

#don't fear the guide


execute at @a[scores={char=6}] as @a[distance=0.1..5] unless score @s Team = @p[scores={char=6}] Team run tag @s add guide_valid_victim
execute at @a[scores={char=6}] as @a[distance=5.1..] unless score @s Team = @p[scores={char=6}] Team run tag @s remove guide_valid_victim
execute at @a[scores={char=6}] as @a if score @s Team = @p[scores={char=6}] Team run tag @s remove guide_valid_victim

execute as @a[scores={char=6}] at @s positioned ~ ~1.5 ~ run function chars:guide_dontfear_raycast

#no one escapes

scoreboard players set @a[scores={char=6,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=6,s1_timer=1,CC_silence=1..}] s1_timer 240

execute as @a[scores={char=6,s1_timer=1,CC_silence=0}] at @s positioned ~ ~1.5 ~ run function chars:guide_deathmark_raycast

execute at @a[scores={char=6,s1_timer=1,CC_silence=0}] unless entity @e[distance=1..12,tag=guide_deathmarked] run scoreboard players set @a[scores={char=6}] spellCD1 20
execute at @a[scores={char=6,s1_timer=1,CC_silence=0}] unless entity @e[distance=1..12,tag=guide_deathmarked] run scoreboard players set @a[scores={char=6}] s1_timer 240

execute at @e[tag=guide_deathmarked] run tp @p[scores={char=6}] ~ ~ ~
effect give @e[tag=guide_deathmarked] slowness 1 4 true
scoreboard players set @e[tag=guide_deathmarked,scores={HPercentage=..50}] CC_stun 20
execute at @e[tag=guide_deathmarked] run particle smoke ~ ~0.5 ~ 0.5 0.8 0.5 0.001 30
execute at @e[tag=guide_deathmarked] run playsound entity.wither.spawn master @a[distance=..10] ~ ~ ~ 0.5 1.2 1

tag @e remove guide_deathmarked

#dark harvest

scoreboard players set @a[scores={char=6,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=6,s2_timer=1,CC_silence=1..}] s2_timer 220

execute at @a[scores={char=6,s2_timer=2,CC_silence=0}] run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.1 1.4 1
execute at @a[scores={char=6,s2_timer=3,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 1 0.8 1


execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~35 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~25 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~15 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~5 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-5 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-15 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-25 0 run function chars:guide_harvest_raycast
execute as @a[scores={char=6,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-35 0 run function chars:guide_harvest_raycast


execute if entity @a[tag=guide_harvested,scores={HPercentage=51..}] run effect give @p[scores={char=6}] instant_health 1 0
execute if entity @a[tag=guide_harvested,scores={HPercentage=..50}] run effect give @p[scores={char=6}] instant_health 1 1
scoreboard players set @e[tag=guide_harvested,scores={HPercentage=..50}] CC_root 40
damage @e[tag=guide_harvested,limit=1] 3 generic by @p[scores={char=6}] from @p[scores={char=6}]
tag @e remove guide_harvested

# the guide

scoreboard players set @a[scores={s1_timer=1,char=6}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=6}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=6}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=6}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=6}] s2_timer 1
scoreboard players set @a[scores={s2_timer=241..,char=6}] s2_timer 0

execute as @a[scores={char=6}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] run clear @a[scores={char=6}] minecraft:iron_hoe
item replace entity @a[scores={char=6},predicate=!chars:guide_passive_check] hotbar.0 with iron_hoe[custom_data={guide_attack:1},minecraft:custom_name={bold:1b,color:"gray",text:"Death Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @a[scores={char=6},predicate=chars:guide_passive_check] hotbar.0 with iron_hoe[custom_data={guide_attack:1},minecraft:custom_name={bold:1b,color:"gray",text:"Death Grasp"},minecraft:enchantments={"minecraft:soul_speed":1},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=6,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=6}] carrot_on_a_stick
item replace entity @a[scores={char=6,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:wither_rose",minecraft:custom_name={text:"No One Escapes",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=6,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=6}] warped_fungus_on_a_stick
item replace entity @a[scores={char=6,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:dried_kelp",minecraft:custom_name={text:"Dark Harvest",color:"dark_aqua",bold:1b}] 1