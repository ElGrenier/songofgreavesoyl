kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

execute at @a[scores={char=2,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add huntressshot_ar
#execute at @e[tag=huntressshot] run particle block{block_state: 'minecraft:green_wool'} ~ ~ ~ 0.1 0.1 0.1 0.1 2

execute at @a[scores={char=2,CC_disarm=1..}] run kill @e[tag=huntressshot_ar]

effect give @a[scores={char=2},nbt={SelectedItem:{id:"minecraft:bow"}}] weakness 1 100 true

#passive

effect give @a[scores={char=2,universal_shoot=1..}] speed 1 1 true
effect give @a[scores={char=2,s1_timer=1}] speed 1 1 true
scoreboard players set @a[scores={universal_shoot=1..}] universal_shoot 0

item replace entity @a[scores={char=2,bowbreak=1..}] hotbar.0 with bow[minecraft:custom_name={text:"Bow",color:"gray",bold:1b},minecraft:unbreakable={}] 1
scoreboard players set @a[scores={bowbreak=1..}] bowbreak 0

#aim sure

scoreboard players set @a[scores={char=2,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=2,s1_timer=1,CC_silence=1..}] s1_timer 160

execute at @a[scores={char=2,s1_timer=1,CC_silence=0}] run particle crit ~ ~1 ~ 0.5 1 0.5 0.1 20 normal
execute at @a[scores={char=2,s1_timer=1,CC_silence=0}] run playsound entity.skeleton.shoot master @a[distance=..15] ~ ~ ~ 1 1.2 1

execute at @a[scores={char=2,s1_timer=1}] run summon item_display ~ ~1 ~ {teleport_duration:1,transformation:[0.7071067812f,0.7071067812f,0f,0f,0f,0f,-1f,0f,-0.7071067812f,0.7071067812f,0f,0f,0f,0f,0f,1f],item:{id:"minecraft:arrow",count:1},Tags:["aim_sure_arrow","projectile","entities_huntress"]}
scoreboard players operation @e[tag=projectile,tag=aim_sure_arrow] Team = @p[scores={char=2}] Team
tp @e[tag=aim_sure_arrow,limit=1] @a[scores={char=2,s1_timer=1},limit=1]
execute at @a[scores={char=2,s1_timer=1,CC_silence=0}] as @e[tag=aim_sure_arrow,limit=1] at @s run tp @s ~ ~1 ~ 
execute at @a[scores={char=2,s1_timer=1..}] as @e[tag=aim_sure_arrow] at @s run tp @s ^ ^ ^1.2
execute at @a[scores={char=2,s1_timer=11..}] as @e[tag=aim_sure_arrow] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=aim_sure_arrow] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=aim_sure_arrow] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=2,s1_timer=40..}] run kill @e[tag=aim_sure_arrow]

execute at @e[tag=aim_sure_arrow] run particle crit ~ ~ ~ 0 0 0 0.01 1
execute at @e[tag=aim_sure_arrow] run particle dust{color:[0.67,0.67,0.67],scale:1} ~ ~ ~ 0.4 0.4 0.4 0 3

execute at @e[tag=aim_sure_arrow] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=2}] Team run tag @s add aimed_true

execute at @e[tag=aimed_true] run kill @e[tag=aim_sure_arrow]
execute if entity @e[tag=aimed_true] at @a[scores={char=2}] run playsound entity.experience_orb.pickup master @a[scores={char=2}] ~ ~ ~ 1 0.1 1
damage @e[tag=aimed_true,limit=1] 6 arrow by @p[scores={char=2}] from @p[scores={char=2}]
effect give @e[tag=aimed_true] slowness 1 3
tag @e remove aimed_true

#backflip

scoreboard players set @a[scores={char=2,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=2,s2_timer=1,CC_silence=1..}] s2_timer 140

execute at @a[scores={char=2,death_dash_reset=1..}] run kill @e[tag=backflip]
execute at @a[scores={char=2,universal_death=1..}] run kill @e[tag=backflip]
execute at @a[scores={char=2,CC_grounded=1..}] run kill @e[tag=backflip]
execute at @a[scores={char=2,CC_root=1..}] run kill @e[tag=backflip]
execute at @a[scores={char=2,CC_stun=1..}] run kill @e[tag=backflip]

item replace entity @a[scores={char=2,s2_timer=1,CC_silence=0}] hotbar.0 with bow[minecraft:max_damage=1,minecraft:custom_name={text:"Bow",color:"gray",bold:1b},minecraft:enchantments={"minecraft:punch":2}] 1
execute at @a[scores={char=2,s2_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:gravel"}} ~ ~0.1 ~ 0.6 0.3 0.6 0.01 30 normal
execute at @a[scores={char=2,s2_timer=1,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
effect give @a[scores={char=2,s2_timer=2,CC_silence=0}] resistance 1 100 true
scoreboard players set @a[scores={char=2,s2_timer=2,CC_silence=0}] CC_intangible 20
effect give @a[scores={char=2,s2_timer=2,CC_silence=0}] weakness 1 100 true
effect give @a[scores={char=2,s2_timer=2,CC_silence=0}] invisibility 1 100 true
tag @a[scores={char=2,s2_timer=2,CC_silence=0}] add invisible

execute at @a[scores={char=2,s2_timer=1,CC_silence=0}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["backflip"],NoGravity:1b}

execute at @a[scores={char=2,s2_timer=1,CC_silence=0},y_rotation=45..135] run summon armor_stand ~ ~ ~ {Rotation:[90.0f,0.0f],Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["backflip_vis","entities_huntress"],Pose:{Body:[10.0f,0.0f,0.0f],LeftArm:[301.0f,32.0f,0.0f],RightArm:[277.0f,328.0f,24.0f],LeftLeg:[318.0f,350.0f,0.0f],RightLeg:[299.0f,10.0f,0.0f],Head:[12.0f,0.0f,0.0f]},equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6902602},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":1975834},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2588694},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ0ODY5YmU2MWE4MDYyZmRkNDkxMjZhMjFkMDA4OTdkOTNkMGM2ZTU1MTMwM2YxOWNhOTNlN2VlZTdmMWQ2YSJ9fX0="}]}},count:1}}}
execute at @a[scores={char=2,s2_timer=1,CC_silence=0},y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Rotation:[-90.0f,0.0f],Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["backflip_vis","entities_huntress"],Pose:{Body:[10.0f,0.0f,0.0f],LeftArm:[301.0f,32.0f,0.0f],RightArm:[277.0f,328.0f,24.0f],LeftLeg:[318.0f,350.0f,0.0f],RightLeg:[299.0f,10.0f,0.0f],Head:[12.0f,0.0f,0.0f]},equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6902602},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":1975834},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2588694},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ0ODY5YmU2MWE4MDYyZmRkNDkxMjZhMjFkMDA4OTdkOTNkMGM2ZTU1MTMwM2YxOWNhOTNlN2VlZTdmMWQ2YSJ9fX0="}]}},count:1}}}
execute at @a[scores={char=2,s2_timer=1,CC_silence=0},y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["backflip_vis","entities_huntress"],Pose:{Body:[10.0f,0.0f,0.0f],LeftArm:[301.0f,32.0f,0.0f],RightArm:[277.0f,328.0f,24.0f],LeftLeg:[318.0f,350.0f,0.0f],RightLeg:[299.0f,10.0f,0.0f],Head:[12.0f,0.0f,0.0f]},equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6902602},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":1975834},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2588694},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ0ODY5YmU2MWE4MDYyZmRkNDkxMjZhMjFkMDA4OTdkOTNkMGM2ZTU1MTMwM2YxOWNhOTNlN2VlZTdmMWQ2YSJ9fX0="}]}},count:1}}}
execute at @a[scores={char=2,s2_timer=1,CC_silence=0},y_rotation=135..-135] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["backflip_vis","entities_huntress"],Pose:{Body:[10.0f,0.0f,0.0f],LeftArm:[301.0f,32.0f,0.0f],RightArm:[277.0f,328.0f,24.0f],LeftLeg:[318.0f,350.0f,0.0f],RightLeg:[299.0f,10.0f,0.0f],Head:[12.0f,0.0f,0.0f]},equipment:{mainhand:{id:"minecraft:bow",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6902602},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":1975834},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2588694},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ0ODY5YmU2MWE4MDYyZmRkNDkxMjZhMjFkMDA4OTdkOTNkMGM2ZTU1MTMwM2YxOWNhOTNlN2VlZTdmMWQ2YSJ9fX0="}]}},count:1}}}


tp @e[tag=backflip,limit=1] @a[scores={char=2,s2_timer=1,CC_silence=0},limit=1]
tp @e[tag=backflip_vis,limit=1] @a[scores={char=2,s2_timer=1,CC_silence=0},limit=1]
execute at @a[scores={char=2,s2_timer=1,CC_silence=0},limit=1] run tp @e[tag=backflip,limit=1] ~ ~0.5 ~

clear @a[scores={char=2,s2_timer=1..2,CC_silence=0}] player_head
clear @a[scores={char=2,s2_timer=1..2,CC_silence=0}] leather_chestplate
clear @a[scores={char=2,s2_timer=1..2,CC_silence=0}] leather_leggings
clear @a[scores={char=2,s2_timer=1..2,CC_silence=0}] leather_boots

execute unless entity @e[tag=backflip] run kill @e[tag=backflip_vis]

execute as @e[tag=backflip] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=backflip] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=backflip] at @s unless block ^ ^1 ^-0.5 #minecraft:dash run kill @s
execute as @e[tag=backflip] at @s unless block ^ ^1.5 ^-1.5 #minecraft:dash run kill @s
execute as @e[tag=backflip] at @s unless block ^ ^1 ^-1 #minecraft:dash run kill @s
execute as @e[tag=backflip] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s

execute as @e[tag=backflip] at @s run tp @s ^ ^ ^-1
execute as @e[tag=backflip_vis] run tp @p[scores={char=2},limit=1]


tp @a[scores={char=2,s2_timer=2..9,death_dash_reset=0}] @e[tag=backflip,limit=1]
execute at @a[scores={char=2,s2_timer=10}] run kill @e[tag=backflip_vis]
execute at @a[scores={char=2,s2_timer=10}] run kill @e[tag=backflip]
effect clear @a[scores={char=2,s2_timer=10}] invisibility
tag @a[scores={char=2,s2_timer=10}] remove invisible
execute as @a[scores={char=2,s2_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect give @a[scores={char=2,s2_timer=10}] slow_falling 1 1 true
effect clear @a[scores={char=2,s2_timer=20}] slow_falling


# huntress

scoreboard players set @a[scores={s1_timer=1,char=2}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=2}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=2}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=2}] spellCD2 160
scoreboard players add @a[scores={s2_timer=1..,char=2}] s2_timer 1
scoreboard players set @a[scores={s2_timer=161..,char=2}] s2_timer 0


execute as @a[scores={char=2,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=2}] bow
execute as @a[scores={char=2,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run item replace entity @a[scores={char=2}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Bow",color:"gray",bold:1b},minecraft:unbreakable={}] 1

execute as @a[scores={char=2,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=2}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=2,s1_timer=0,CC_silence=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tipped_arrow",potion_contents={potion:"minecraft:wind_charged"},minecraft:custom_name={text:"Aim True",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=2,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=2}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=2,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:chainmail_boots",minecraft:custom_name={text:"Backflip",color:"dark_aqua",bold:1b}] 1