kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=11},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

#passive and stuff

effect give @a[tag=pyrophilia,scores={char=11}] speed 3 0
effect give @a[tag=pyrophilia,scores={char=11}] regeneration 3 2

tag @a[tag=pyrophilia] remove pyrophilia

execute at @a[scores={char=11,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add bombmastershot_ar
execute at @e[tag=bombmastershot_ar] run particle falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute at @e[tag=bombmastershot_ar] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.1 2

execute at @a[scores={char=11,CC_disarm=1..}] run kill @e[tag=bombmastershot_ar]


#explosive trap
execute at @a[scores={char=11,CC_silence=1..}] run kill @e[type=minecraft:item,tag=!bomb,nbt={Item:{id:"minecraft:tnt"}}]
scoreboard players set @a[scores={char=11,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=11,s1_timer=1,CC_silence=1..}] s1_timer 80

execute as @a[scores={char=11,s1_timer=1,CC_silence=0}] at @s positioned ^ ^1 ^1 if block ~ ~ ~ #dash run summon item ~ ~0.5 ~ {PickupDelay:32767,Tags:["bomb","entities_bombmaster"],Item:{id:"minecraft:tnt",count:1}}
execute as @a[scores={char=11,s1_timer=1,CC_silence=0}] at @s positioned ^ ^1 ^1 unless block ~ ~ ~ #dash at @p[scores={char=11}] run summon item ~ ~1 ~ {PickupDelay:32767,Tags:["bomb","entities_bombmaster"],Item:{id:"minecraft:tnt",count:1}}

execute at @a[scores={char=11,s1_timer=1,CC_silence=0}] run scoreboard players add @e[tag=bomb] SummonAge 1
kill @e[tag=bomb,scores={SummonAge=4..}]

scoreboard players add @e[tag=bomb] BombArmed 1
execute at @e[scores={BombArmed=39}] run particle enchanted_hit ~ ~0.4 ~ 0.2 0.3 0.2 0.5 10
execute at @e[scores={BombArmed=39}] run playsound block.lever.click master @a[distance=..10] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @e[tag=bomb,scores={BombArmed=41..90}] BombArmed 40

execute at @a[scores={char=11},team=purple] run team join purple @e[tag=bomb]
execute at @a[scores={char=11},team=yellow] run team join yellow @e[tag=bomb]

execute as @e[tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=11}] Team run scoreboard players set @e[tag=bomb,scores={BombArmed=40..90},limit=1,distance=..2] BombArmed 91

execute at @e[scores={BombArmed=100..}] run particle enchanted_hit ~ ~0.3 ~ 0.1 0.3 0.1 0.5 10
execute at @e[scores={BombArmed=100..}] run playsound entity.zombie_villager.cure master @a[distance=..6] ~ ~ ~ 0.03 2 1
execute at @e[scores={BombArmed=101}] run playsound block.beacon.activate master @a[distance=..6] ~ ~ ~ 1 1.5 1

execute at @e[tag=bomb,scores={BombArmed=120..}] run particle explosion ~ ~1 ~ 2.5 2.5 2.5 0.01 20 normal
execute at @e[tag=bomb,scores={BombArmed=120..}] run particle enchanted_hit ~ ~1 ~ 3 3 3 0.01 400 normal
execute at @e[tag=bomb,scores={BombArmed=120..}] run particle falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~1 ~ 3 3 3 0.01 100 normal
execute at @e[tag=bomb,scores={BombArmed=120..}] run playsound entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 1 1.8 1
execute at @e[tag=bomb,scores={BombArmed=120..}] run playsound entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 0.5 1.5 1
execute at @e[tag=bomb,scores={BombArmed=120..}] run summon marker ~ ~ ~ {Tags:["BombExplosion"]}

execute at @e[tag=BombExplosion] as @e[distance=..1.5,scores={HP=..12},tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run tag @s add pyrophilia
execute at @e[tag=BombExplosion] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run damage @s 12 generic by @p[scores={char=11}] from @p[scores={char=11}]

execute at @e[tag=BombExplosion] as @e[distance=1.6..4,scores={HP=..8},tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run tag @s add pyrophilia
execute at @e[tag=BombExplosion] as @e[distance=1.6..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run damage @s 8 generic by @p[scores={char=11}] from @p[scores={char=11}]

kill @e[tag=BombExplosion]
kill @e[tag=bomb,scores={BombArmed=120..}]


#grenade toss

scoreboard players set @a[scores={char=11,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=11,s2_timer=1,CC_silence=1..}] s2_timer 280

execute at @a[scores={char=11,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:waxed_oxidized_copper_bulb"},Tags:["bm_grenade","projectile","entities_bombmaster"]}
scoreboard players operation @e[tag=projectile,tag=bm_grenade] Team = @p[scores={char=11}] Team
execute at @a[scores={char=11,s2_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 0.8 1
tp @e[tag=bm_grenade,limit=1] @a[scores={char=11,s2_timer=1},limit=1]
execute at @a[scores={char=11,s2_timer=1,CC_silence=0}] as @e[tag=bm_grenade,limit=1] at @s run tp @s ~ ~1.2 ~ 
execute at @a[tag=grenade] run kill @e[tag=bm_grenade]

execute at @a[scores={char=11,s2_timer=1..14}] as @e[tag=bm_grenade] at @s run tp @s ^ ^ ^0.6

execute at @a[scores={char=11,s2_timer=15..24}] as @e[tag=bm_grenade] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=11,s2_timer=15..24}] as @e[tag=bm_grenade] at @s run tp @s ~ ~-0.3 ~

execute at @a[scores={char=11,s2_timer=25..}] as @e[tag=bm_grenade] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=11,s2_timer=25..}] as @e[tag=bm_grenade] at @s run tp @s ~ ~-0.5 ~

execute at @a[scores={char=11,s2_timer=40..}] as @e[tag=bm_grenade] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=bm_grenade] run particle crit ~ ~ ~ 0.1 0.2 0.1 0.01 3 normal
execute at @e[tag=bm_grenade] run particle enchanted_hit ~ ~ ~ 0.1 0.2 0.1 0.01 4 normal

execute at @e[tag=bm_grenade] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run summon marker ~ ~1 ~ {Tags:["grenade","entities_bombmaster"]}


execute as @e[tag=bm_grenade] at @s unless block ^ ^ ^0.5 #minecraft:dash run summon marker ~ ~1 ~ {Tags:["grenade","entities_bombmaster"]}
execute at @e[tag=grenade] run kill @e[tag=bm_grenade]
execute at @e[tag=grenade] run particle explosion ~ ~1 ~ 2.5 2.5 2.5 0.01 20 normal
execute at @e[tag=grenade] run particle enchanted_hit ~ ~1 ~ 3 3 3 0.0001 400 normal
execute at @e[tag=grenade] run particle falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~1 ~ 3 3 3 0.001 100 normal
execute at @e[tag=grenade] run playsound entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 0.8 1.5 1
execute at @e[tag=grenade] run playsound entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 1 1.8 1

execute as @e[tag=bm_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @e[tag=grenade] as @e[distance=..5,scores={HP=..8},tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run tag @s add pyrophilia
execute at @e[tag=grenade] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=11}] Team run damage @s 8 generic by @p[scores={char=11}] from @p[scores={char=11}]

kill @e[tag=grenade]

# bomb master

scoreboard players set @a[scores={s1_timer=1,char=11}] spellCD1 100
scoreboard players add @a[scores={s1_timer=1..,char=11}] s1_timer 1
scoreboard players set @a[scores={s1_timer=101..,char=11}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=11}] spellCD2 300
scoreboard players add @a[scores={s2_timer=1..,char=11}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=11}] s2_timer 0

execute as @a[scores={char=11}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=11}] minecraft:bow
item replace entity @a[scores={char=11}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Energy Bolt Weapon",color:"gray",bold:1b},minecraft:unbreakable={}] 1

execute as @a[scores={char=11,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=11}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=11,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tnt",minecraft:custom_name={text:"Explosive Trap",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=11,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=11}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=11,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:waxed_oxidized_copper_bulb",minecraft:custom_name={text:"Grenade Toss",color:"dark_aqua",bold:1b}] 1

