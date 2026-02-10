kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:brush"}}]



# grave feat

execute at @a[scores={char=65}] as @a[distance=0.1..10] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_stealtt_interrupt
execute at @a[scores={char=65}] as @a[distance=10.1..] unless score @s Team = @p[scores={char=65}] Team run tag @s remove ghoul_stealtt_interrupt
execute at @a[scores={char=65}] as @a if score @s Team = @p[scores={char=65}] Team run tag @s remove ghoul_stealtt_interrupt

scoreboard players add @a[scores={char=65}] outofcombat 1
scoreboard players set @a[scores={char=65,outofcombat=200..}] outofcombat 180
effect clear @a[scores={stealth=1..}] glowing
execute at @a[scores={char=65,outofcombat=180..210}] unless entity @e[distance=..10,tag=Altars] unless entity @e[tag=ghoul_stealtt_interrupt,distance=..10] run scoreboard players set @p[scores={char=65,outofcombat=180..210}] stealth 4

scoreboard players remove @a[scores={stealth=1..}] stealth 1

scoreboard players add @a[scores={stealth=3..,char=65,regen=..40}] regen 1
tag @a[scores={stealth=3,char=65}] add invisible
effect give @a[scores={stealth=3..,char=65}] invisibility 1 1 true
item replace entity @a[scores={stealth=3,char=65}] armor.head with stone[item_model=air,minecraft:custom_name="aaaa",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}]] 1
item replace entity @a[scores={stealth=3,char=65}] armor.chest with air
item replace entity @a[scores={stealth=3,char=65}] armor.legs with air
item replace entity @a[scores={stealth=3,char=65}] armor.feet with air

#execute at @a[scores={stealth=2,char=65}] run particle falling_dust{block_state: 'minecraft:coal_block'} ~ ~1 ~ 0.5 1 0.5 0.01 40
#execute at @a[scores={stealth=1..2,char=65}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 1 1

effect clear @a[scores={stealth=..2,char=65}] invisibility
tag @a[scores={stealth=..1,char=65}] remove invisible


# septic bite

scoreboard players set @a[scores={char=65,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=65,s1_timer=1,CC_silence=1..}] s1_timer 220


execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=septicdash]
execute at @a[tag=ghoul_bite] run kill @e[tag=septicdash]

effect give @a[scores={char=65,s1_timer=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=65,s1_timer=1..2}] run kill @e[tag=septicdash]

execute at @a[scores={char=65,s1_timer=1,CC_silence=0}] run particle crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s1_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s1_timer=1,CC_silence=0}] run playsound entity.zombie.hurt master @a[distance=..12] ~ ~ ~ 0.6 1.1 1
execute at @a[scores={char=65,s1_timer=1,CC_silence=0}] run playsound entity.polar_bear.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=65,s1_timer=2}] run summon marker ~ ~ ~ {Tags:["septicdash","entities_ghoul"],NoGravity:1b}

tp @e[tag=septicdash,limit=1] @a[scores={char=65,s1_timer=2},limit=1]
execute at @a[scores={char=65,s1_timer=2},limit=1] run tp @e[tag=septicdash,limit=1] ~ ~0.5 ~

execute as @e[tag=septicdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=septicdash] run particle item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 5

execute as @e[tag=septicdash] at @s run tp @s ^ ^ ^0.9

execute at @e[tag=septicdash] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_bite

tp @a[scores={char=65,s1_timer=2..8,death_dash_reset=0}] @e[tag=septicdash,limit=1]
execute at @a[scores={char=65,s1_timer=8}] run kill @e[tag=septicdash]
execute as @a[scores={char=65,s1_timer=8}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s1_timer=8..11,CC_silence=0}] slow_falling

execute at @e[tag=ghoul_bite] run kill @e[tag=septicdash]
effect give @a[tag=ghoul_bite] slowness 1 5
effect give @a[tag=ghoul_bite] mining_fatigue 3 5
scoreboard players set @a[tag=ghoul_bite] CC_exhaust 60
execute at @e[tag=ghoul_bite] run playsound entity.armadillo.eat master @a[distance=..12] ~ ~ ~ 1 0.8 1
#execute at @e[tag=ghoul_bite] run playsound entity.evoker_fangs.attack master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
#execute as @a[scores={char=65}] at @s run tp @s ~ ~ ~ facing entity @n[tag=ghoul_bite]

damage @e[tag=ghoul_bite,limit=1] 6 generic by @p[scores={char=65}] from @p[scores={char=65}]
tag @e remove ghoul_bite

# ambush

scoreboard players set @a[scores={char=65,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=65,s2_timer=1,CC_silence=1..}] s2_timer 380

# ambush - dash 1

execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[tag=ghoul_ambushed_1] run kill @e[tag=ghoul_ambushdash_1]

execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=ghoul_ambush_cling]

effect give @a[scores={char=65,s2_timer=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=65,s2_timer=1..2}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,s2_timer=1..2}] run kill @e[tag=ghoul_ambush_cling]

execute at @a[scores={char=65,s2_timer=1,CC_silence=0}] run particle crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer=1,CC_silence=0}] run particle crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=65,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["ghoul_ambushdash_1","entities_ghoul"],NoGravity:1b}
clear @a[scores={char=65,s2_timer=2,CC_silence=0}] *[custom_data={s2:1}]

tp @e[tag=ghoul_ambushdash_1,limit=1] @a[scores={char=65,s2_timer=2},limit=1]
execute at @a[scores={char=65,s2_timer=2},limit=1] run tp @e[tag=ghoul_ambushdash_1,limit=1] ~ ~0.5 ~

execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] rotated ~ 0 unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~1 ~ ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~-1 ~ ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~-1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}

execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] rotated ~ 0 unless block ^ ^ ^1.5 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}

execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~1.5 ~ ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~-1.5 ~ ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~1.5 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~-1.5 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}


execute as @e[tag=ghoul_ambushdash_1] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=ghoul_ambushdash_1] run particle item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 2
execute as @e[tag=ghoul_ambushdash_1] at @s run tp @s ^ ^ ^0.9
execute at @e[tag=ghoul_ambushdash_1] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_ambushed_1

tp @a[scores={char=65,s2_timer=2..12,death_dash_reset=0}] @e[tag=ghoul_ambushdash_1,limit=1]
execute at @a[scores={char=65,s2_timer=12}] run kill @e[tag=ghoul_ambushdash_1]
execute as @a[scores={char=65,s2_timer=12}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s2_timer=11..13,CC_silence=0}] slow_falling

execute at @a[tag=ghoul_ambushed_1] run kill @e[tag=ghoul_ambushdash_1]
scoreboard players set @a[tag=ghoul_ambushed_1] CC_stun 10
execute at @a[tag=ghoul_ambushed_1] run playsound entity.zombie.ambient master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[tag=ghoul_ambushed_1] run playsound entity.player.big_fall master @a[distance=..12] ~ ~ ~ 1 0.8 1
damage @p[tag=ghoul_ambushed_1] 2 generic by @p[scores={char=65}] from @p[scores={char=65}]

tag @a remove ghoul_ambushed_1

# ambush - dash 2

execute at @e[tag=ghoul_ambush_cling] run particle item{item:"rotten_flesh"} ~ ~1 ~ 0.4 0.8 0.4 0.01 1
execute at @e[tag=ghoul_ambush_cling] run particle crit ~ ~1 ~ 0.4 0.8 0.4 0.01 2
execute at @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=2}] run playsound entity.player.small_fall master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=80..}] run clear @a *[custom_data={s1:1}]
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=1..9}] run effect give @a[scores={char=65}] slow_falling 1 0 true
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=1..9}] run effect give @a[scores={char=65}] levitation 1 0 true
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=1..5}] run effect give @a[scores={char=65}] slowness 1 4 true

execute if entity @e[tag=ghoul_ambush_cling] as @a[scores={char=65}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=65}] warped_fungus_on_a_stick[custom_data={s2:2}]

execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=1..10}] run item replace entity @a[scores={char=65}] hotbar.2 with warped_fungus_on_a_stick[damage=0,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:mushroom_stew",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=11..20}] run item replace entity @a[scores={char=65}] hotbar.2 with warped_fungus_on_a_stick[damage=1,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:mushroom_stew",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=21..30}] run item replace entity @a[scores={char=65}] hotbar.2 with warped_fungus_on_a_stick[damage=2,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:mushroom_stew",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=31..}] run item replace entity @a[scores={char=65}] hotbar.2 with warped_fungus_on_a_stick[damage=3,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:mushroom_stew",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1

#execute if entity @e[tag=ghoul_ambush_cling] run title @a title {"text":"ambush cling"}

execute at @e[tag=ghoul_ambush_cling] run tp @a[scores={char=65}] ~ ~ ~
scoreboard players add @e[tag=ghoul_ambush_cling] s2_timer_recast 1
execute at @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=40..}] run clear @a[scores={char=65}] warped_fungus_on_a_stick[custom_data={s2:2}]
kill @e[tag=ghoul_ambush_cling,scores={s2_timer_recast=40..}]


execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[tag=ghoul_ambushed_2] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[tag=ghoul_ambush_cling] run kill @e[tag=ghoul_ambushdash_2]

effect give @a[scores={char=65,s2_timer_recast=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=65,s2_timer_recast=1..2}] run kill @e[tag=ghoul_ambushdash_2]

execute at @a[scores={char=65,s2_timer_recast=1..5}] run kill @e[tag=ghoul_ambush_cling]
effect clear @a[scores={char=65,s2_timer_recast=1..2}] slowness
execute at @a[scores={char=65,s2_timer_recast=1,CC_silence=0}] run particle crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer_recast=1,CC_silence=0}] run particle crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer_recast=2,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s2_timer_recast=1,CC_silence=0}] run playsound entity.zombie.death master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=65,s2_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=65,s2_timer_recast=1,CC_silence=0}] run playsound entity.polar_bear.warning master @a[distance=..12] ~ ~ ~ 0.8 1.2 1
execute at @a[scores={char=65,s2_timer_recast=2}] run summon marker ~ ~ ~ {Tags:["ghoul_ambushdash_2","entities_ghoul"],NoGravity:1b}
clear @a[scores={char=65,s2_timer_recast=1..}] warped_fungus_on_a_stick[custom_data={s2:2}]

tp @e[tag=ghoul_ambushdash_2,limit=1] @a[scores={char=65,s2_timer_recast=2},limit=1]
execute at @a[scores={char=65,s2_timer_recast=2},limit=1] run tp @e[tag=ghoul_ambushdash_2,limit=1] ~ ~0.5 ~

execute as @e[tag=ghoul_ambushdash_2] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=ghoul_ambushdash_2] run particle item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 2

execute as @e[tag=ghoul_ambushdash_2] at @s run tp @s ^ ^ ^1.2

execute at @e[tag=ghoul_ambushdash_2] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_ambushed_2


tp @a[scores={char=65,s2_timer_recast=2..15,death_dash_reset=0}] @e[tag=ghoul_ambushdash_2,limit=1]
execute at @a[scores={char=65,s2_timer_recast=15}] run kill @e[tag=ghoul_ambushdash_2]
execute as @a[scores={char=65,s2_timer_recast=15}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s2_timer_recast=14..16,CC_silence=0}] slow_falling

scoreboard players add @a[scores={s2_timer_recast=1..,char=65}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=40..,char=65}] s2_timer_recast 0


execute at @a[tag=ghoul_ambushed_2] run kill @e[tag=ghoul_ambushdash_2]
scoreboard players set @a[tag=ghoul_ambushed_2] CC_stun 20
execute at @a[tag=ghoul_ambushed_2] run playsound entity.zombie.ambient master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute at @a[tag=ghoul_ambushed_2] run playsound entity.player.big_fall master @a[distance=..12] ~ ~ ~ 1 0.6 1
damage @p[tag=ghoul_ambushed_2] 4 generic by @p[scores={char=65}] from @p[scores={char=65}]

tag @a remove ghoul_ambushed_2

# ghoul

scoreboard players set @a[scores={char=65,s1_timer=1}] spellCD1 200
scoreboard players add @a[scores={char=65,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=65,s1_timer=200..}] s1_timer 0

scoreboard players set @a[scores={char=65,s2_timer=100}] spellCD2 220
scoreboard players add @a[scores={char=65,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=65,s2_timer=320..}] s2_timer 0

execute as @a[scores={char=65}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:brush",Slot:0b}]}] run clear @a[scores={char=65}] brush
item replace entity @a[scores={char=65}] hotbar.0 with brush[swing_animation={type:"stab"},minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=65,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=65}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=65,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:enchantments={"minecraft:quick_charge":1},custom_data={s1:1},minecraft:item_model="minecraft:rotten_flesh",minecraft:custom_name={text:"Septic Bite",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=65,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=65}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=65,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:bowl",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1





