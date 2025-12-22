kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}]


#passive
scoreboard players set @a[scores={char=22}] unstoppable 5


#grab

execute unless entity @e[tag=devourer_tentacle_animation_fix] run summon marker ~ ~ ~ {Tags:["devourer_tentacle_animation_fix","entities_devourer"]}
execute as @p[scores={char=22}] at @s run tp @e[tag=devourer_tentacle_animation_fix] ~ ~1 ~

scoreboard players set @a[scores={char=22,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=22,s1_timer=1,CC_silence=1..}] s1_timer 240

execute at @a[scores={char=22,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["tentacle","projectile","entities_devourer"]}
execute at @a[scores={char=22,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["devourer_tentacle_visual_core","entities_devourer"]}
execute at @a[scores={char=22,s1_timer=1,CC_silence=0}] run playsound entity.squid.death master @a[distance=..20] ~ ~ ~ 1.0 0.5 1.0
scoreboard players operation @e[tag=projectile,tag=tentacle] Team = @p[scores={char=22}] Team
tp @e[tag=tentacle,limit=1] @a[scores={char=22,s1_timer=1},limit=1]
execute at @a[scores={char=22,s1_timer=1,CC_silence=0}] as @e[tag=tentacle,limit=1] at @s run tp @s ~ ~1.2 ~ 
execute as @e[tag=tentacle] at @s run tp @s ^ ^ ^0.9
execute at @e[tag=d_tentacle_visuals] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.3 0.3 0.3 0.0001 10 normal
#execute at @e[tag=tentacle] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ^ ^ ^-1 0.1 0.1 0.1 0.0001 10 normal
#execute at @e[tag=tentacle] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ^ ^ ^-2 0.1 0.1 0.1 0.0001 10 normal

execute as @e[tag=tentacle] at @s run tp @e[tag=devourer_tentacle_visual_core] ~ ~ ~ facing entity @e[tag=devourer_tentacle_animation_fix,limit=1]

execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..1] unless entity @e[tag=d_tentacle1] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle1","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..2] unless entity @e[tag=d_tentacle2] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle2","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..3] unless entity @e[tag=d_tentacle3] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle3","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..4] unless entity @e[tag=d_tentacle4] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle4","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..5] unless entity @e[tag=d_tentacle5] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle5","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..6] unless entity @e[tag=d_tentacle6] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle6","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..7] unless entity @e[tag=d_tentacle7] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle7","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..8] unless entity @e[tag=d_tentacle8] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle8","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..9] unless entity @e[tag=d_tentacle9] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle9","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..10] unless entity @e[tag=d_tentacle10] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle10","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..11] unless entity @e[tag=d_tentacle11] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle11","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..12] unless entity @e[tag=d_tentacle12] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle12","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..13] unless entity @e[tag=d_tentacle13] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle13","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..14] unless entity @e[tag=d_tentacle14] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle14","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..15] unless entity @e[tag=d_tentacle15] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle15","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..16] unless entity @e[tag=d_tentacle16] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle16","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..17] unless entity @e[tag=d_tentacle17] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle17","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..18] unless entity @e[tag=d_tentacle18] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle18","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..19] unless entity @e[tag=d_tentacle19] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle19","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute as @e[tag=devourer_tentacle_visual_core] at @s unless entity @a[scores={char=22},distance=..20] unless entity @e[tag=d_tentacle20] at @s positioned ~ ~-20 ~ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["d_tentacle20","d_tentacle_visuals","entities_devourer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.6f],scale:[0.8f,0.8f,1.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}

execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^20 run tp @e[tag=d_tentacle20] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^19 run tp @e[tag=d_tentacle19] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^18 run tp @e[tag=d_tentacle18] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^17 run tp @e[tag=d_tentacle17] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^16 run tp @e[tag=d_tentacle16] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^15 run tp @e[tag=d_tentacle15] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^14 run tp @e[tag=d_tentacle14] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^13 run tp @e[tag=d_tentacle13] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^12 run tp @e[tag=d_tentacle12] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^11 run tp @e[tag=d_tentacle11] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^10 run tp @e[tag=d_tentacle10] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^9 run tp @e[tag=d_tentacle9] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^8 run tp @e[tag=d_tentacle8] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^7 run tp @e[tag=d_tentacle7] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^6 run tp @e[tag=d_tentacle6] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^5 run tp @e[tag=d_tentacle5] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=d_tentacle4] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=d_tentacle3] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=d_tentacle2] ~ ~ ~
execute as @e[tag=devourer_tentacle_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=d_tentacle1] ~ ~ ~

execute as @e[tag=d_tentacle_visuals] at @s run rotate @s facing entity @e[tag=devourer_tentacle_visual_core,limit=1]
execute at @e[tag=tentacle] positioned ~-0.75 ~-0.75 ~-0.75 as @p[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=22}] Team run tag @s add pull
execute if entity @a[tag=pull] run kill @e[tag=tentacle]
scoreboard players set @a[tag=pull] CC_stun 20
tp @a[tag=pull] @p[scores={char=22}]
tag @a remove pull

execute at @a[scores={char=22,s1_timer=17}] run kill @e[tag=tentacle]
execute at @a[scores={char=22,s1_timer=17..18}] run kill @e[tag=devourer_tentacle_visual_core]
execute at @a[scores={char=22,s1_timer=17..18}] run kill @e[tag=d_tentacle_visuals]

#devour it all

execute if entity @a[scores={devoured=1..79}] unless entity @e[tag=spit_if_dead] run summon marker ~ ~ ~ {Tags:["spit_if_dead"]}
execute at @a[scores={char=22,void=1..}] run tp @a[scores={devoured=1..}] @e[tag=spit_if_dead,limit=1]
execute at @a[scores={char=22,void=1..}] run scoreboard players set @a[scores={devoured=1..}] devoured 0
execute at @a[scores={char=22,void=1..}] run kill @e[tag=spit_if_dead]
execute at @a[scores={char=22,abyss=1..}] run tp @a[scores={devoured=1..}] @e[tag=spit_if_dead,limit=1]
execute at @a[scores={char=22,abyss=1..}] run scoreboard players set @a[scores={devoured=1..}] devoured 0
execute at @a[scores={char=22,abyss=1..}] run kill @e[tag=spit_if_dead]
execute at @a[scores={char=22,universal_death=1..}] run tp @a[scores={devoured=1..}] @e[tag=spit_if_dead,limit=1]
execute at @a[scores={char=22,universal_death=1..}] run scoreboard players set @a[scores={devoured=1..}] devoured 0
execute at @a[scores={char=22,universal_death=1..}] run kill @e[tag=spit_if_dead]
tp @e[tag=spit_if_dead] @p[scores={char=22}]

execute if entity @a[scores={devoured=1..79}] at @a[scores={char=22}] run particle large_smoke ~ ~ ~ 0.5 0.2 0.5 0.0001 5 normal


execute at @a[scores={char=22,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["devour_maw","entities_devourer"]}
execute at @a[scores={char=22,s2_timer=1,CC_silence=0}] run playsound entity.evoker_fangs.attack master @a[distance=..10] ~ ~ ~ 1.0 1.0 1.0
tp @e[tag=devour_maw,limit=1] @a[scores={char=22,s2_timer=1},limit=1]
execute at @a[scores={char=22,s2_timer=1,CC_silence=0}] as @e[tag=devour_maw,limit=1] at @s run tp @s ~ ~1.5 ~ 
execute as @e[tag=devour_maw] at @s run tp @s ^ ^ ^0.3

execute at @e[tag=devour_maw] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 0.0001 10 normal
execute at @e[tag=devour_maw] positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=22}] Team run scoreboard players set @s CC_banish 60
execute at @e[tag=devour_maw] positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=22}] Team run scoreboard players set @s devoured 1

execute at @a[scores={devoured=1..}] run kill @e[tag=devour_maw]
execute at @a[scores={char=22,s2_timer=10}] run kill @e[tag=devour_maw]


scoreboard players set @a[scores={devoured=1..,universal_death=1..}] devoured 0
tp @a[scores={devoured=1..2}] 145 8 -218
scoreboard players set @a[scores={devoured=60}] CC_stun 20
tp @a[scores={devoured=60}] @p[scores={char=22}]
execute if entity @a[scores={char=22}] run scoreboard players add @a[scores={devoured=1..}] devoured 1
scoreboard players set @a[scores={devoured=70..}] devoured 0
execute at @a[scores={devoured=61}] run playsound entity.drowned.death master @a[distance=..10] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={devoured=61}] run kill @e[tag=spit_if_dead]



# devourer

scoreboard players set @a[scores={char=22}] MaxHP 32

scoreboard players set @a[scores={s1_timer=1,char=22}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=22}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=22}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=22}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=22}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=22}] s2_timer 0

execute as @a[scores={char=22}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_axe",Slot:0b}]}] run clear @a[scores={char=22}] netherite_axe[custom_data={s1:1}]
item replace entity @a[scores={char=22}] hotbar.0 with netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Matter"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minecraft:enchantments={"minecraft:infinity":1}] 1

execute as @a[scores={char=22,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=22}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=22,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:nether_star",minecraft:custom_name={text:"Star Catcher",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:infinity":1}] 1

execute as @a[scores={char=22,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=22}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=22,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:flint_and_steel",minecraft:custom_name={text:"Consume It All",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:binding_curse":1}] 1














