kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone"}}]
# kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:andesite_wall"}}]
# kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron"}}]



# magic beyond death

execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=4..}] run damage @p[scores={char=66}] 3 generic
execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=3}] run damage @p[scores={char=66}] 2 generic
execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=2}] run damage @p[scores={char=66}] 1 generic

execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=4..}] run damage @p[scores={char=66}] 3 generic
execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=3}] run damage @p[scores={char=66}] 2 generic
execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=2}] run damage @p[scores={char=66}] 1 generic

scoreboard players remove @a[scores={lich_takedown=1..}] lich_takedown 1

execute at @a[scores={universal_hit=1..,char=66}] as @a[distance=..5] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100
#execute at @a[scores={universal_hit=1..,char=66},team=purple] run scoreboard players set @p[distance=..5,team=yellow] lich_takedown 100

execute at @a[scores={universal_death=1..,lich_takedown=1..}] run tag @a[scores={char=66}] add lich_heal
scoreboard players set @a[scores={universal_death=1..,lich_takedown=1..}] lich_takedown 0

effect give @a[tag=lich_heal,scores={char=66}] minecraft:regeneration 2 3
execute at @a[tag=lich_heal,scores={char=66}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.6 0.7 0.1 30
execute at @a[tag=lich_heal,scores={char=66}] run particle minecraft:item{item:"raw_iron"} ~ ~1 ~ 0.5 0.5 0.5 0.01 5

execute at @a[tag=lich_heal] run particle minecraft:damage_indicator ~ ~0.5 ~ 0.3 0.8 0.3 0.1 10
execute at @a[tag=lich_heal] run particle minecraft:glow ~ ~1 ~ 0.3 0.4 0.3 0.001 10
execute at @a[tag=lich_heal] run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 0.8 1

tag @a[tag=lich_heal,scores={char=66}] remove lich_heal

# impale

tag @a[scores={universal_death=1..}] remove lich_impaled

scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=1..}] s1_timer 80

#execute at @a[scores={char=66,s1_timer=1,CC_silence=0},team=yellow] unless entity @a[distance=..8,team=purple] run scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=0}] spellCD1 20
#execute at @a[scores={char=66,s1_timer=1,CC_silence=0},team=yellow] unless entity @a[distance=..8,team=purple] run scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=0}] s1_timer 80

#execute at @a[scores={char=66,s1_timer=1,CC_silence=0},team=purple] unless entity @a[distance=..8,team=yellow] run scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=0}] spellCD1 20
#execute at @a[scores={char=66,s1_timer=1,CC_silence=0},team=purple] unless entity @a[distance=..8,team=yellow] run scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=0}] s1_timer 80



execute at @a[scores={char=66,s1_timer=1,CC_silence=0}] run playsound minecraft:item.trident.throw master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=66,s1_timer=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["lich_impale_rebar","entities_lich"],NoGravity:0b}
tp @e[tag=lich_impale_rebar,limit=1] @a[scores={char=66,s1_timer=2},limit=1]
execute at @a[scores={char=66,s1_timer=2,CC_silence=0}] as @e[tag=lich_impale_rebar,limit=1] at @s run tp @s ~ ~1.2 ~

execute at @e[tag=lich_impale_rebar] run particle minecraft:crit ^ ^ ^1 0.1 0.1 0.1 0.01 5 force
execute at @e[tag=lich_impale_rebar] run particle minecraft:crit ^ ^ ^0.5 0.1 0.1 0.1 0.01 5 force
execute at @e[tag=lich_impale_rebar] run particle minecraft:crit ^ ^ ^-0.5 0.1 0.1 0.1 0.01 5 force
execute at @e[tag=lich_impale_rebar] run particle minecraft:crit ^ ^ ^-1 0.1 0.1 0.1 0.01 5 force

execute at @e[tag=lich_impale_rebar] run particle minecraft:glow ^ ^ ^1 0.4 0.4 0.4 0.1 3
execute at @e[tag=lich_impale_rebar] run particle minecraft:glow ^ ^ ^ 0.4 0.4 0.4 0.1 3
execute as @e[tag=lich_impale_rebar] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=66,s1_timer=20..}] run kill @e[tag=lich_impale_rebar]


execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=0}] unless score @s Team = @p[scores={char=66}] Team run damage @s 5 generic by @p[scores={char=66}] from @p[scores={char=66}]
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=1}] unless score @s Team = @p[scores={char=66}] Team run damage @s 6 generic by @p[scores={char=66}] from @p[scores={char=66}]
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=2}] unless score @s Team = @p[scores={char=66}] Team run damage @s 7 generic by @p[scores={char=66}] from @p[scores={char=66}]
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=3..}] unless score @s Team = @p[scores={char=66}] Team run damage @s 8 generic by @p[scores={char=66}] from @p[scores={char=66}]
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=0}] unless score @s Team = @p[scores={char=66}] Team run effect give @s minecraft:slowness 1 1 true
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=1}] unless score @s Team = @p[scores={char=66}] Team run effect give @s minecraft:slowness 2 1 true
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=2}] unless score @s Team = @p[scores={char=66}] Team run effect give @s minecraft:slowness 3 1 true
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5,scores={lich_rebar_count=3..}] unless score @s Team = @p[scores={char=66}] Team run effect give @s minecraft:slowness 4 1 true
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5] unless score @s Team = @p[scores={char=66}] Team run scoreboard players add @s lich_rebar_count 1
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_rebar_decay 0
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5] unless score @s Team = @p[scores={char=66}] Team run playsound minecraft:item.trident.hit master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=lich_impale_rebar] as @a[distance=..1.5] unless score @s Team = @p[scores={char=66}] Team run kill @e[tag=lich_impale_rebar]

# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run damage @p[distance=..1.5,scores={lich_rebar_count=0},team=yellow] 5 generic by @p[scores={char=66}] from @p[scores={char=66}]
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run damage @p[distance=..1.5,scores={lich_rebar_count=1},team=yellow] 6 generic by @p[scores={char=66}] from @p[scores={char=66}]
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run damage @p[distance=..1.5,scores={lich_rebar_count=2},team=yellow] 7 generic by @p[scores={char=66}] from @p[scores={char=66}]
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run damage @p[distance=..1.5,scores={lich_rebar_count=3..},team=yellow] 8 generic by @p[scores={char=66}] from @p[scores={char=66}]
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run effect give @p[distance=..1.5,scores={lich_rebar_count=0},team=yellow] minecraft:slowness 1 1 true
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run effect give @p[distance=..1.5,scores={lich_rebar_count=1},team=yellow] minecraft:slowness 2 1 true
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run effect give @p[distance=..1.5,scores={lich_rebar_count=2},team=yellow] minecraft:slowness 3 1 true
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run effect give @p[distance=..1.5,scores={lich_rebar_count=3..},team=yellow] minecraft:slowness 4 1 true
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run scoreboard players add @p[distance=..1.5,team=yellow] lich_rebar_count 1
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] run scoreboard players set @p[distance=..1.5,team=yellow] lich_rebar_decay 0
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] if entity @a[distance=..1.5,team=yellow] run playsound minecraft:item.trident.hit master @a[distance=..10] ~ ~ ~ 1 0.5 1
# execute if entity @a[scores={char=66},team=purple] at @e[tag=lich_impale_rebar] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=lich_impale_rebar]

scoreboard players add @a[scores={lich_rebar_count=1..}] lich_rebar_decay 1
scoreboard players set @a[scores={lich_rebar_decay=140..}] lich_rebar_count 0
scoreboard players set @a[scores={lich_rebar_decay=140..}] lich_rebar_decay 0

# scrap harvest

scoreboard players set @a[scores={char=66,s1_timer_2=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=66,s1_timer_2=1,CC_silence=1..}] s1_timer 40

execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["scrap_harvest","harvest_visuals","entities_lich"]}
execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run playsound minecraft:item.trident.return master @a[distance=..10] ~ ~ ~ 0.8 0.8 1
execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run playsound minecraft:item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.5 1

scoreboard players add @e[tag=scrap_harvest] s2_timer 1
scoreboard players add @e[tag=scrap_harvest_return] s2_timer 1

execute as @e[tag=scrap_harvest,scores={s2_timer=1},limit=1] run tp @a[scores={char=66,s2_timer=1},limit=1]

execute as @e[tag=scrap_harvest,scores={s2_timer=2..10}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=scrap_harvest,scores={s2_timer=11..20}] at @s run tp @s ^ ^ ^0.35
execute as @e[tag=scrap_harvest,scores={s2_timer=21..}] at @s run tp @s ^ ^ ^0.3

execute at @e[tag=scrap_harvest,scores={s2_timer=30..},limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["scrap_harvest_return","harvest_visuals","entities_lich"]}
kill @e[tag=scrap_harvest,scores={s2_timer=30..},limit=1]

execute as @e[tag=scrap_harvest_return] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=66},limit=1]
execute as @e[tag=scrap_harvest_return,scores={s2_timer=2..10}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=scrap_harvest_return,scores={s2_timer=11..20}] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=scrap_harvest_return,scores={s2_timer=21..}] at @s run tp @s ^ ^ ^0.5


execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=1}] minecraft:absorption 2 0
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=2}] minecraft:absorption 3 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=3}] minecraft:absorption 4 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=4}] minecraft:absorption 5 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=5}] minecraft:absorption 6 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=6}] minecraft:absorption 7 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run scoreboard players set @a[scores={char=66,lich_scrap_shield=1..}] lich_scrap_shield 0

execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run playsound minecraft:item.armor.equip_netherite master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run playsound minecraft:item.trident.return master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1,scores={char=66}] run kill @s


execute at @e[tag=harvest_visuals] run particle minecraft:crit ~ ~1 ~ 0.8 0.7 0.8 0.1 20
execute at @e[tag=harvest_visuals] run particle minecraft:sweep_attack ~ ~1 ~ 0.9 0.9 0.9 0.1 2
execute at @e[tag=harvest_visuals] run particle minecraft:glow ~ ~1 ~ 0.8 0.7 0.8 0.1 3
#execute at @e[tag=harvest_visuals] run particle minecraft:block{block_state: 'minecraft:chain'} ~ ~1 ~ 0.5 0.5 0.5 0.01 30
execute at @e[tag=harvest_visuals] run particle minecraft:item{item:"raw_iron"} ~ ~1 ~ 0.8 0.8 0.8 0.01 5
#execute at @e[tag=harvest_visuals] run playsound minecraft:item.trident.throw master @a[distance=..12] ~ ~ ~ 0.1 0.1 1
execute at @e[tag=harvest_visuals] run playsound minecraft:item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 0.3 0.5 1

#execute at @e[tag=harvest_visuals] run scoreboard players set @a[distance=..2,team=purple] CC_exhaust 60
#execute at @e[tag=harvest_visuals] run effect give @a[distance=..2,team=purple] minecraft:mining_fatigue 3 5
#execute at @e[tag=harvest_visuals] if entity @a[scores={char=66},team=purple] run scoreboard players set @a[distance=..2,team=yellow] CC_exhaust 60
#execute at @e[tag=harvest_visuals] if entity @a[scores={char=66},team=purple] run effect give @a[distance=..2,team=yellow] minecraft:mining_fatigue 3 5


execute at @e[tag=scrap_harvest] as @a[distance=..2,scores={lich_scrap_damage=0}] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_scrap_damage 1
execute at @e[tag=scrap_harvest] as @a[distance=..2] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100
#execute at @e[tag=scrap_harvest] if entity @a[scores={char=66},team=purple] run scoreboard players set @a[distance=..2,scores={lich_scrap_damage=0},team=yellow] lich_scrap_damage 1
#execute at @e[tag=scrap_harvest] if entity @a[scores={char=66},team=purple] run scoreboard players set @a[distance=..2,team=yellow] lich_takedown 100
execute at @e[tag=scrap_harvest_return] as @a[distance=..2,scores={lich_scrap_damage2=0}] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_scrap_damage2 1
execute at @e[tag=scrap_harvest_return] as @a[distance=..2] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100
#execute at @e[tag=scrap_harvest_return] if entity @a[scores={char=66},team=purple] run scoreboard players set @a[distance=..2,scores={lich_scrap_damage2=0},team=yellow] lich_scrap_damage2 1
#execute at @e[tag=scrap_harvest_return] if entity @a[scores={char=66},team=purple] run scoreboard players set @a[distance=..2,team=yellow] lich_takedown 100

scoreboard players add @a[scores={lich_scrap_damage=1..}] lich_scrap_damage 1
execute as @a[scores={lich_scrap_damage=2}] run playsound minecraft:item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute as @a[scores={lich_scrap_damage=2}] run damage @s 3 generic by @e[tag=harvest_visuals,sort=nearest,limit=1] from @p[scores={char=66}]
execute as @a[scores={lich_scrap_damage=2}] run scoreboard players add @p[scores={char=66}] lich_scrap_shield 1
execute at @a[scores={lich_scrap_damage=2}] run playsound minecraft:item.trident.hit master @a[distance=..12] ~ ~ ~ 1 0.5 1
scoreboard players set @a[scores={lich_scrap_damage=40..}] lich_scrap_damage 0

scoreboard players add @a[scores={lich_scrap_damage2=1..}] lich_scrap_damage2 1
execute as @a[scores={lich_scrap_damage2=2}] run playsound minecraft:item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute as @a[scores={lich_scrap_damage2=2}] run damage @s 3 generic by @e[tag=harvest_visuals,sort=nearest,limit=1] from @p[scores={char=66}]
execute as @a[scores={lich_scrap_damage2=2}] run scoreboard players add @p[scores={char=66}] lich_scrap_shield 1
execute at @a[scores={lich_scrap_damage2=2}] run playsound minecraft:item.trident.hit master @a[distance=..12] ~ ~ ~ 1 0.5 1
scoreboard players set @a[scores={lich_scrap_damage2=40..}] lich_scrap_damage2 0

execute at @a[scores={char=66,universal_death=1..}] run kill @e[tag=scrap_harvest]
execute at @a[scores={char=66,universal_death=1..}] run kill @e[tag=scrap_harvest_return]

# iron lich

scoreboard players set @a[scores={char=66,s1_timer=1}] spellCD1 80
scoreboard players add @a[scores={char=66,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=66,s1_timer=81..}] s1_timer 0


scoreboard players set @a[scores={char=66,s2_timer=1}] spellCD2 60
scoreboard players add @a[scores={char=66,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=66,s2_timer=61..}] s2_timer 0


execute as @a[scores={char=66}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bone",Slot:0b}]}] run clear @a[scores={char=66}] minecraft:bone
item replace entity @a[scores={char=66}] hotbar.0 with minecraft:bone[minecraft:custom_name={bold:1b,color:"gray",text:"Bone"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:protection":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=66,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=66}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=66,s1_timer=0,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:andesite_wall",minecraft:custom_name={text:"Impale",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:impaling":1}] 1


execute as @a[scores={char=66,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=66}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=66,s2_timer=0}] hotbar.2 with minecraft:warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:raw_iron",minecraft:custom_name={text:"Scrap Harvest",color:"dark_aqua",bold:1b}] 1
