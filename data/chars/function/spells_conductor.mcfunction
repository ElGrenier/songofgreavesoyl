kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]
execute at @a[scores={char=73,arrowcd_1=..10}] run tag @e[type=arrow,distance=..2] add conductorshot_ar
execute at @a[scores={char=73,arrowcd_1=..10},tag=conductor_charged] run tag @e[type=arrow,distance=..2] add conductor_charged_arrow
execute at @e[tag=conductorshot_ar] run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute at @e[tag=conductorshot_ar] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute at @a[scores={char=73,CC_disarm=1..}] run kill @e[tag=conductorshot_ar]

effect give @a[scores={char=73},nbt={SelectedItem:{id:"minecraft:bow"}}] weakness 1 100 true

# power surge

scoreboard players set @a[scores={char=73},tag=conductor_charged] passive_conductor 40
scoreboard players remove @a[scores={char=73,passive_conductor=1..}] passive_conductor 1
#tag @a[scores={char=73,passive_conductor=1..}] remove conductor_charged

execute at @e[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run tag @a[scores={char=73,passive_conductor=0}] add conductor_charged
tag @a[scores={char=73,universal_shoot=1..}] remove conductor_charged
execute at @a[scores={char=73},tag=conductor_charged] run particle electric_spark ~ ~ ~ 0.4 0.2 0.4 0 3
execute at @a[scores={char=73},tag=conductor_charged] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.4 0.2 0.4 0 2



execute at @e[tag=conductor_charged_arrow] unless entity @e[tag=conductor_charged_arrow_boom] run summon marker ~ ~ ~ {Tags:["conductor_charged_arrow_boom","entities_conductor"]}
tp @e[tag=conductor_charged_arrow_boom] @e[tag=conductor_charged_arrow,limit=1]
execute as @e[tag=conductor_charged_arrow_boom] at @s unless entity @e[tag=conductor_charged_arrow] run tag @s add conductor_surge_explosion

execute at @e[tag=conductor_surge_explosion] run playsound entity.lightning_bolt.impact master @a[distance=..12] ~ ~ ~ 1 1.5 1
execute at @e[tag=conductor_surge_explosion] run playsound entity.zombie_villager.cure master @a[distance=..12] ~ ~ ~ 0.8 2 1
execute at @e[tag=conductor_surge_explosion] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 2 2 2 0.1 100
execute at @e[tag=conductor_surge_explosion] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 2.5 2.5 2.5 0.1 100
execute at @e[tag=conductor_surge_explosion] run particle electric_spark ~ ~ ~ 2 2 2 0.1 100
execute at @e[tag=conductor_surge_explosion] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=73}] Team run damage @s 3 dragon_breath by @p[scores={char=73}] from @p[scores={char=73}]

kill @e[tag=conductor_surge_explosion]

# electrocution

scoreboard players set @a[scores={char=73,s1_timer=1..30,CC_silence=1..}] spellCD1 170
scoreboard players set @a[scores={char=73,s1_timer=1..30,CC_silence=1..}] s1_timer 31

execute as @a[scores={char=73,s1_timer=1..30,CC_silence=0}] at @s positioned ~ ~1.3 ~ run function chars:conductor_electrocute_raycast
execute at @a[scores={char=73,s1_timer=1..30,CC_silence=0}] run playsound entity.zombie_villager.cure master @a[distance=..10] ~ ~ ~ 0.1 2 1


#execute if entity @e[tag=balls_electrocuted] at @a[scores={char=73}] run playsound entity.experience_orb.pickup master @a[scores={char=73}] ~ ~ ~ 1 0.1 1
execute as @e[tag=balls_electrocuted] as @s run damage @s 0.3 dragon_breath by @p[scores={char=73}]
execute at @e[tag=balls_electrocuted] run particle electric_spark ~ ~1 ~ 1 1 1 0.001 50
scoreboard players set @a[tag=balls_electrocuted] CC_grounded 10
tag @e remove balls_electrocuted

# chain lightning

execute at @a[scores={char=73}] as @e[tag=valid_spell_target] unless score @s Team = @p[scores={char=73}] Team run tag @s add conductor_valid_chain_lightning_target
execute at @a[scores={char=73}] as @e[tag=valid_spell_target] if score @s Team = @p[scores={char=73}] Team run tag @s remove conductor_valid_chain_lightning_target

execute at @a[scores={char=73,s2_timer=1,CC_silence=0}] run playsound entity.zombie_villager.cure master @a[distance=..10] ~ ~ ~ 0.6 1.6 1
execute at @a[scores={char=73,s2_timer=1,CC_silence=0}] run playsound entity.breeze.hurt master @a[distance=..10] ~ ~ ~ 1 1.5 1


execute at @a[scores={char=73,s2_timer=1}] run tag @e remove chain_lightning_immune
execute at @a[scores={char=73,s2_timer=1}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:diamond_block"},Tags:["chain_lightning_first","ball_lightning","entities_conductor","projectile"]}
scoreboard players operation @e[tag=projectile,tag=chain_lightning_first] Team = @p[scores={char=73}] Team
tp @e[tag=chain_lightning_first,limit=1] @a[scores={char=73,s2_timer=1},limit=1]
execute at @a[scores={char=73,s2_timer=1,CC_silence=0}] as @e[tag=chain_lightning_first,limit=1] at @s run tp @s ~ ~1 ~ 

execute as @e[tag=ball_lightning] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=ball_lightning] run particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=ball_lightning] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 2
execute as @e[tag=ball_lightning] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=ball_lightning] run particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=ball_lightning] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 2
execute as @e[tag=ball_lightning] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=ball_lightning] run particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=ball_lightning] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 2
execute as @e[tag=ball_lightning] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=ball_lightning] run particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=ball_lightning] run particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 2

execute as @e[tag=ball_lightning] at @s positioned ~ ~ ~ unless block ^ ^ ^0.5 #dash run kill @s
execute as @e[tag=ball_lightning] at @s positioned ~ ~ ~ unless block ^ ^ ^0.2 #dash run kill @s
execute as @e[tag=ball_lightning] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute as @e[tag=chain_lightning_first] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=chain_lightning_first] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=73,s2_timer=20..}] run kill @e[tag=chain_lightning_first]

execute at @e[tag=chain_lightning_first] positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,tag=!chain_lightning_immune] unless score @s Team = @p[scores={char=73}] Team run tag @s add electrocuted_by_ball
execute at @e[tag=chain_lightning_first] positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,tag=!chain_lightning_immune] unless score @s Team = @p[scores={char=73}] Team run kill @e[tag=chain_lightning_first]

execute at @e[tag=chain_lightning_next] positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,tag=!chain_lightning_immune] unless score @s Team = @p[scores={char=73}] Team run tag @s add electrocuted_by_ball
execute at @e[tag=chain_lightning_next] positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,tag=!chain_lightning_immune] unless score @s Team = @p[scores={char=73}] Team run kill @e[tag=chain_lightning_next]


tag @e[tag=electrocuted_by_ball] add chain_lightning_immune
execute at @e[tag=electrocuted_by_ball] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:diamond_block"},Tags:["chain_lightning_next","ball_lightning","entities_conductor","projectile"]}
execute as @e[tag=electrocuted_by_ball] run damage @s 6 generic by @p[scores={char=73}] from @p[scores={char=73}]
#execute at @e[tag=electrocuted_by_ball] run 
tag @e remove electrocuted_by_ball

scoreboard players add @e[tag=chain_lightning_next] s0_timer 1
execute as @e[tag=chain_lightning_next,scores={s0_timer=1..2}] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,tag=valid_spell_target,tag=conductor_valid_chain_lightning_target,tag=!chain_lightning_immune,limit=1,distance=0.5..] eyes


kill @e[tag=chain_lightning_next,scores={s0_timer=9..}]


execute as @e[tag=chain_lightning_next] at @s unless entity @e[tag=conductor_valid_chain_lightning_target,distance=..8,tag=!chain_lightning_immune] run kill @s

# conductor

scoreboard players set @a[scores={s1_timer=1,char=73}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=73}] s1_timer 1
scoreboard players set @a[scores={s1_timer=240..,char=73}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=73}] spellCD2 280
scoreboard players add @a[scores={s2_timer=1..,char=73}] s2_timer 1
scoreboard players set @a[scores={s2_timer=280..,char=73}] s2_timer 0


execute as @a[scores={char=73,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=73}] bow
execute as @a[scores={char=73,CC_disarm=0},tag=!conductor_charged] run item replace entity @a[scores={char=73}] hotbar.0 with bow[custom_data={charged:0},minecraft:item_model="minecraft:lightning_rod",minecraft:custom_name={text:"Conductor's Rod",color:"gray",bold:1b},minecraft:unbreakable={}] 1
execute as @a[scores={char=73,CC_disarm=0},tag=conductor_charged] run item replace entity @a[scores={char=73}] hotbar.0 with bow[minecraft:use_effects={can_sprint:true,speed_multiplier:0.85},custom_data={charged:1},minecraft:enchantments={"minecraft:channeling":1},minecraft:item_model="minecraft:waxed_oxidized_lightning_rod",minecraft:custom_name={text:"Conductor's Rod",color:"gray",bold:1b},minecraft:unbreakable={}] 1

execute as @a[scores={char=73,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=73}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=73,s1_timer=0,CC_silence=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:yellow_candle",minecraft:custom_name={text:"Electrocution",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=73,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=73}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=73,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:diamond_nautilus_armor",minecraft:custom_name={text:"Chain Lightning",color:"dark_aqua",bold:1b}] 1