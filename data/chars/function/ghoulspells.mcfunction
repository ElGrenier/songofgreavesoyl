kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:brush"}}]
# kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:rotten_flesh"}}]
# kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bowl"}}]
# kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:mushroom_stew"}}]



# grave feat

scoreboard players add @a[scores={char=65}] outofcombat 1
scoreboard players set @a[scores={char=65,outofcombat=200..}] outofcombat 180
effect clear @a[scores={stealth=1..}] minecraft:glowing
execute at @a[scores={char=65,outofcombat=180..210}] unless entity @e[distance=..10,tag=Altars] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=65}] Team run scoreboard players set @p[scores={char=65,outofcombat=180..210}] stealth 4
#execute at @a[scores={char=65,outofcombat=180..210},team=purple] unless entity @e[distance=..10,tag=Altars] unless entity @e[distance=..10,team=yellow] run scoreboard players set @a[scores={char=65,outofcombat=180..210}] stealth 4

scoreboard players remove @a[scores={stealth=1..}] stealth 1

scoreboard players add @a[scores={stealth=3..,char=65,regen=..40}] regen 1
tag @a[scores={stealth=3,char=65}] add invisible
effect give @a[scores={stealth=3..,char=65}] minecraft:invisibility 1 1 true
item replace entity @a[scores={stealth=3,char=65}] armor.head with minecraft:air
item replace entity @a[scores={stealth=3,char=65}] armor.chest with minecraft:air
item replace entity @a[scores={stealth=3,char=65}] armor.legs with minecraft:air
item replace entity @a[scores={stealth=3,char=65}] armor.feet with minecraft:air

#execute at @a[scores={stealth=2,char=65}] run particle minecraft:falling_dust{block_state: 'minecraft:coal_block'} ~ ~1 ~ 0.5 1 0.5 0.01 40
#execute at @a[scores={stealth=1..2,char=65}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 1 1

effect clear @a[scores={stealth=..2,char=65}] minecraft:invisibility
tag @a[scores={stealth=..1,char=65}] remove invisible


# septic bite

scoreboard players set @a[scores={char=65,s1_timer =1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=65,s1_timer =1,CC_silence=1..}] s1_timer 220


execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=septicdash]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=septicdash]
execute at @a[tag=ghoul_bite] run kill @e[tag=septicdash]

effect give @a[scores={char=65,s1_timer =2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=65,s1_timer =1..2}] run kill @e[tag=septicdash]

execute at @a[scores={char=65,s1_timer =1,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s1_timer =1,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s1_timer =1,CC_silence=0}] run playsound minecraft:entity.zombie.hurt master @a[distance=..12] ~ ~ ~ 1 1.1 1
execute at @a[scores={char=65,s1_timer =2}] run summon minecraft:marker ~ ~ ~ {Tags:["septicdash","entities_ghoul"],NoGravity:1b}

tp @e[tag=septicdash,limit=1] @a[scores={char=65,s1_timer =2},limit=1]
execute at @a[scores={char=65,s1_timer =2},limit=1] run tp @e[tag=septicdash,limit=1] ~ ~0.5 ~

execute as @e[tag=septicdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=septicdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=septicdash] run particle minecraft:item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 5

execute as @e[tag=septicdash] at @s run tp @s ^ ^ ^0.9

execute at @e[tag=septicdash] as @a[distance=..2] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_bite
#execute at @e[tag=septicdash] if entity @a[scores={char=65},team=purple] run tag @p[distance=..2,team=yellow] add ghoul_bite

tp @a[scores={char=65,s1_timer =2..8,death_dash_reset=0}] @e[tag=septicdash,limit=1]
execute at @a[scores={char=65,s1_timer =8}] run kill @e[tag=septicdash]
execute as @a[scores={char=65,s1_timer =8}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s1_timer =8..11,CC_silence=0}] minecraft:slow_falling


effect give @a[tag=ghoul_bite] minecraft:slowness 1 5
effect give @a[tag=ghoul_bite] minecraft:mining_fatigue 3 5
scoreboard players set @a[tag=ghoul_bite] CC_exhaust 60
execute at @a[tag=ghoul_bite] run playsound minecraft:entity.armadillo.eat master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[tag=ghoul_bite] run playsound minecraft:entity.armadillo.eat master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute as @a[scores={char=65}] at @s run tp @s ~ ~ ~ facing entity @p[tag=ghoul_bite]
damage @p[tag=ghoul_bite] 6 generic by @p[scores={char=65}] from @p[scores={char=65}]
execute at @a[tag=ghoul_bite] run kill @e[tag=septicdash]

tag @a remove ghoul_bite

# ambush

scoreboard players set @a[scores={char=65,s2_timer =1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=65,s2_timer =1,CC_silence=1..}] s2_timer 380

# ambush - dash 1

execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[tag=ghoul_ambushed_1] run kill @e[tag=ghoul_ambushdash_1]


effect give @a[scores={char=65,s2_timer =2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=65,s2_timer =1..2}] run kill @e[tag=ghoul_ambushdash_1]
execute at @a[scores={char=65,s2_timer =1..2}] run kill @e[tag=ghoul_ambush_cling]

execute at @a[scores={char=65,s2_timer =1,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer =1,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s2_timer =1,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s2_timer =1,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=65,s2_timer =2}] run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambushdash_1","entities_ghoul"],NoGravity:1b}

tp @e[tag=ghoul_ambushdash_1,limit=1] @a[scores={char=65,s2_timer=2},limit=1]
execute at @a[scores={char=65,s2_timer =2},limit=1] run tp @e[tag=ghoul_ambushdash_1,limit=1] ~ ~0.5 ~

#execute as @e[tag=ghoul_ambushdash_1,x_rotation=6..90] at @s run tp @s ~ ~ ~ ~ 5

#execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling"]}
#execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ^ ^1 ^0.5 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling"]}
#execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ^ ^1.5 ^1.5 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling"]}
#execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ^ ^1 ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling"]}
#execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["ghoul_ambush_cling"]}

execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~1 ~ ~ #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~-1 ~ ~ #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~-1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}

execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~1.5 ~ ~ #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~-1.5 ~ ~ #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~1.5 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}
execute as @e[tag=ghoul_ambushdash_1] at @s unless entity @e[tag=ghoul_ambush_cling] unless block ~ ~ ~-1.5 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambush_cling","entities_ghoul"]}


execute as @e[tag=ghoul_ambushdash_1] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_1] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=ghoul_ambushdash_1] run particle minecraft:item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 2

execute as @e[tag=ghoul_ambushdash_1] at @s run tp @s ^ ^ ^0.9

execute at @e[tag=ghoul_ambushdash_1] as @a[distance=..2] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_ambushed_1
#execute at @e[tag=ghoul_ambushdash_1] if entity @a[scores={char=65},team=purple] run tag @p[distance=..2,team=yellow] add ghoul_ambushed_1

tp @a[scores={char=65,s2_timer =2..12,death_dash_reset=0}] @e[tag=ghoul_ambushdash_1,limit=1]
execute at @a[scores={char=65,s2_timer =12}] run kill @e[tag=ghoul_ambushdash_1]
execute as @a[scores={char=65,s2_timer =12}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s2_timer =11..13,CC_silence=0}] minecraft:slow_falling

scoreboard players set @a[tag=ghoul_ambushed_1] CC_stun 10
execute at @a[tag=ghoul_ambushed_1] run playsound minecraft:entity.zombie.ambient master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[tag=ghoul_ambushed_1] run playsound minecraft:entity.player.big_fall master @a[distance=..12] ~ ~ ~ 1 0.8 1
damage @p[tag=ghoul_ambushed_1] 2 generic by @p[scores={char=65}] from @p[scores={char=65}]
execute at @a[tag=ghoul_ambushed_1] run kill @e[tag=ghoul_ambushdash_1]

tag @a remove ghoul_ambushed_1

# ambush - dash 2

execute at @e[tag=ghoul_ambush_cling,scores={s3_timer =2}] run playsound minecraft:entity.player.small_fall master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @e[tag=ghoul_ambush_cling,scores={s3_timer =80..}] run clear @a minecraft:mushroom_stew
execute if entity @e[tag=ghoul_ambush_cling,scores={s3_timer =1..5}] run effect give @a[scores={char=65}] minecraft:levitation 1 0 true
execute if entity @e[tag=ghoul_ambush_cling,scores={s3_timer =1..5}] run effect give @a[scores={char=65}] minecraft:slowness 1 4 true
execute if entity @e[tag=ghoul_ambush_cling] run item replace entity @a[scores={char=65,s2_timer =1..20}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:mushroom_stew",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1

#execute if entity @e[tag=ghoul_ambush_cling] run title @a title {"text":"ambush cling"}

scoreboard players add @e[tag=ghoul_ambush_cling] s3_timer 1
kill @e[tag=ghoul_ambush_cling,scores={s3_timer =90..}]


execute at @a[scores={char=65,death_dash_reset=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,universal_death=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_grounded=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_root=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_stun=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[scores={char=65,CC_silence=1..}] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[tag=ghoul_ambushed_2] run kill @e[tag=ghoul_ambushdash_2]
execute at @a[tag=ghoul_ambush_cling] run kill @e[tag=ghoul_ambushdash_2]

effect give @a[scores={char=65,s3_timer =2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=65,s3_timer =1..2}] run kill @e[tag=ghoul_ambushdash_2]

execute at @a[scores={char=65,s2_timer=1..2}] run kill @e[tag=ghoul_ambush_cling]
execute at @a[scores={char=65,s3_timer=1,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s3_timer=1,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.8 0.2 0.8 0.01 80
execute at @a[scores={char=65,s3_timer=2,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=65,s3_timer=1,CC_silence=0}] run playsound minecraft:entity.zombie.death master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=65,s3_timer=1,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=65,s3_timer=2}] run summon minecraft:marker ~ ~ ~ {Tags:["ghoul_ambushdash_2","entities_ghoul"],NoGravity:1b}
clear @a[scores={char=65,s3_timer=1..}] minecraft:warped_fungus_on_a_stick[custom_data={s2:2}]

tp @e[tag=ghoul_ambushdash_2,limit=1] @a[scores={char=65,s3_timer =2},limit=1]
execute at @a[scores={char=65,s3_timer =2},limit=1] run tp @e[tag=ghoul_ambushdash_2,limit=1] ~ ~0.5 ~

execute as @e[tag=ghoul_ambushdash_2] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=ghoul_ambushdash_2] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=ghoul_ambushdash_2] run particle minecraft:item{item:"rotten_flesh"} ~ ~1 ~ 0.3 0.6 0.3 0.01 2

execute as @e[tag=ghoul_ambushdash_2] at @s run tp @s ^ ^ ^1.2

execute at @e[tag=ghoul_ambushdash_2] as @a[distance=..2] unless score @s Team = @p[scores={char=65}] Team run tag @s add ghoul_ambushed_2

#execute at @e[tag=ghoul_ambushdash_2] if entity @a[scores={char=65},team=purple] run tag @fp[distance=..2,team=yellow] add ghoul_ambushed_2

tp @a[scores={char=65,s3_timer =2..15,death_dash_reset=0}] @e[tag=ghoul_ambushdash_2,limit=1]
execute at @a[scores={char=65,s3_timer =15}] run kill @e[tag=ghoul_ambushdash_2]
execute as @a[scores={char=65,s3_timer =15}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=65,s3_timer =14..16,CC_silence=0}] minecraft:slow_falling

scoreboard players add @a[scores={s3_timer =1..}] s3_timer 1
scoreboard players set @a[scores={s3_timer =40..}] s3_timer 0
scoreboard players set @a[scores={s3_timer =40..}] s3_timer 0


scoreboard players set @a[tag=ghoul_ambushed_2] CC_stun 20
execute at @a[tag=ghoul_ambushed_2] run playsound minecraft:entity.zombie.ambient master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute at @a[tag=ghoul_ambushed_2] run playsound minecraft:entity.player.big_fall master @a[distance=..12] ~ ~ ~ 1 0.6 1
damage @p[tag=ghoul_ambushed_2] 4 generic by @p[scores={char=65}] from @p[scores={char=65}]
execute at @a[tag=ghoul_ambushed_2] run kill @e[tag=ghoul_ambushdash_1]

tag @a remove ghoul_ambushed_2

# ghoul

scoreboard players set @a[scores={char=65,s1_timer =1}] spellCD1 240
scoreboard players add @a[scores={char=65,s1_timer =1..}] s1_timer 1
scoreboard players set @a[scores={char=65,s1_timer =241..}] s1_timer 0


scoreboard players set @a[scores={char=65,s2_timer =200}] spellCD2 200
scoreboard players add @a[scores={char=65,s2_timer =1..}] s2_timer 1
scoreboard players set @a[scores={char=65,s2_timer =401..}] s2_timer 0

execute as @a[scores={char=65}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:brush",Slot:0b}]}] run clear @a[scores={char=65}] minecraft:brush
item replace entity @a[scores={char=65}] hotbar.0 with minecraft:brush[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=65,s1_timer =0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=65}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=65,s1_timer =0}] hotbar.1 with carrot_on_a_stick[minecraft:enchantments={"minecraft:quick_charge":1},custom_data={s1:1},minecraft:item_model="minecraft:rotten_flesh",minecraft:custom_name={text:"Septic Bite",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=65,s2_timer =0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=65}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=65,s2_timer =0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:bowl",minecraft:custom_name={text:"Ambush",color:"dark_aqua",bold:1b}] 1





