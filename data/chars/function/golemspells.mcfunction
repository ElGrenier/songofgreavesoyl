

scoreboard players set @e[tag=!golem_pierce_uninitiated] golem_pierce 0
tag @e add golem_pierce_uninitiated

effect give @a[scores={char=18}] weakness 1 100 true

#passive
execute unless entity @e[tag=golemboom] run summon marker ~ ~ ~ {Tags:["immune","golemboom","entities_golem"]}
execute if entity @p[scores={char=18,universal_death=1..}] as @e[tag=golemboom] at @s run summon armor_stand ~ ~2 ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["exmachina","entities_golem"],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":7223095},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":7223095},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7236457},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-2088556085,-83734688,-2129708947,-1030770170],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE0YTJlYTIxZDZjOTY5MzhhMjcxZmNmZjUyM2E2NTA3YjQ1NGY4NGJhZDk1OTkzZjQ0OTJhNmZiYzMwOTRmNSJ9fX0="}]}},count:1}}}
execute at @p[scores={char=18}] run tp @e[tag=golemboom] ~ ~-2 ~


scoreboard players add @e[tag=exmachina] golemexplosion 1
execute at @e[tag=exmachina,scores={golemexplosion=1..20}] run tp @e[tag=exmachina] ~ ~ ~ facing entity @p
execute at @e[scores={golemexplosion=1..25}] run playsound entity.creeper.primed master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[scores={golemexplosion=1..}] run particle firework ~ ~1 ~ 0.2 0.5 0.2 0.001 10 normal
execute at @e[scores={golemexplosion=40..}] run particle firework ~ ~1 ~ 0.2 0.5 0.2 0.1 20 normal
execute at @e[scores={golemexplosion=60..}] run playsound entity.dragon_fireball.explode master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[scores={golemexplosion=60..}] run particle explosion_emitter ~ ~ ~ 3 3 3 1 5 normal
execute at @e[scores={golemexplosion=60..}] run particle firework ~ ~1 ~ 3 3 3 0.1 500 normal
execute at @e[scores={golemexplosion=60..}] as @e[distance=..7,tag=valid_spell_target] unless score @s Team = @p[scores={char=18}] Team run damage @s 12 generic by @p[scores={char=18}] from @p[scores={char=18}]
kill @e[scores={golemexplosion=60..}]


execute at @a[scores={char=18,s0_timer=1,CC_silence=0}] run particle soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.001 10 normal
execute at @a[scores={char=18,s0_timer=1,CC_silence=0}] run playsound minecraft:item.crossbow.shoot master @a[distance=..15] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=18,s0_timer=1,CC_silence=0}] run playsound entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 0.5 0.8 1

execute at @a[scores={char=18,s0_timer=1},tag=!sentrymode] run summon item_display ~ ~1 ~ {teleport_duration:1,transformation:[0.7071067812f,0.7071067812f,0f,0f,0f,0f,-1f,0f,-0.7071067812f,0.7071067812f,0f,0f,0f,0f,0f,1f],item:{id:"minecraft:nether_star",count:1},Tags:["golem_projectile","projectile","entities_golem"]}
execute at @a[scores={char=18,s0_timer=1},tag=sentrymode] run summon item_display ~ ~1 ~ {teleport_duration:1,transformation:[0.7071067812f,0.7071067812f,0f,0f,0f,0f,-1f,0f,-0.7071067812f,0.7071067812f,0f,0f,0f,0f,0f,1f],item:{id:"minecraft:nether_star",count:1},Tags:["golem_flamethrower","projectile","entities_golem"]}
scoreboard players operation @e[tag=projectile,tag=golem_projectile] Team = @p[scores={char=18}] Team
scoreboard players operation @e[tag=projectile,tag=golem_flamethrower] Team = @p[scores={char=18}] Team
tp @e[tag=golem_projectile,limit=1] @a[scores={char=18,s0_timer=1},limit=1]
tp @e[tag=golem_flamethrower,limit=1] @a[scores={char=18,s0_timer=1},limit=1]
execute at @a[scores={char=18,s0_timer=1,CC_silence=0}] as @e[tag=golem_projectile,limit=1] at @s run tp @s ~ ~1.4 ~
execute at @a[scores={char=18,s0_timer=1,CC_silence=0}] as @e[tag=golem_flamethrower,limit=1] at @s run tp @s ~ ~1.3 ~

scoreboard players add @e[tag=golem_projectile] s0_timer 1
scoreboard players add @e[tag=golem_flamethrower] s0_timer 1

execute as @e[tag=golem_projectile,scores={s0_timer=1..}] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=golem_projectile,scores={s0_timer=6..}] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=golem_flamethrower,scores={s0_timer=1..}] at @s run tp @s ^ ^ ^0.6

execute as @e[tag=golem_projectile] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=golem_projectile] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s
execute as @e[tag=golem_flamethrower] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=golem_flamethrower] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s


execute at @e[tag=golem_projectile] run particle crit ~ ~ ~ 0 0 0 0.01 1
execute at @e[tag=golem_projectile] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.4 0.4 0.4 0 4
execute at @e[tag=golem_projectile] run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 3

execute at @e[tag=golem_flamethrower,scores={s0_timer=1..}] run particle firework ~ ~ ~ 0.2 0.2 0.2 0 2
execute at @e[tag=golem_flamethrower,scores={s0_timer=1..}] run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 2
execute at @e[tag=golem_flamethrower,scores={s0_timer=3..}] run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 3
execute at @e[tag=golem_flamethrower,scores={s0_timer=5..}] run particle soul_fire_flame ~ ~ ~ 0.4 0.4 0.4 0 5

kill @e[tag=golem_projectile,scores={s0_timer=10..}]
kill @e[tag=golem_flamethrower,scores={s0_timer=8..}]


execute at @e[tag=golem_projectile] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=18}] Team run tag @s add golem_burned
execute at @e[tag=golem_burned] run kill @e[tag=golem_projectile]
execute if entity @e[tag=golem_burned] at @a[scores={char=18}] run playsound entity.experience_orb.pickup master @a[scores={char=18}] ~ ~ ~ 1 0.1 1
damage @e[tag=golem_burned,limit=1] 4 generic by @p[scores={char=18}] from @p[scores={char=18}]
tag @e remove golem_burned

execute at @e[tag=golem_flamethrower] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={golem_pierce=0}] unless score @s Team = @p[scores={char=18}] Team run tag @s add golem_pierced
#execute if entity @e[tag=golem_pierced] at @a[scores={char=18}] run playsound entity.experience_orb.pickup master @a[scores={char=18}] ~ ~ ~ 1 0.1 1
execute as @e[tag=golem_pierced] run damage @s 2 generic by @p[scores={char=18}] from @p[scores={char=18}]
tag @e remove golem_pierced

scoreboard players add @e[scores={golem_pierce=1..}] golem_pierce 1
scoreboard players set @e[scores={golem_pierce=10..}] golem_pierce 0


#soul furnace

scoreboard players set @a[scores={char=18,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=18,s2_timer=1,CC_silence=1..}] s2_timer 380

execute at @a[scores={char=18,s2_timer=1..60,CC_silence=0}] run particle firework ~ ~1.5 ~ 0.3 0.5 0.3 0.1 3 normal
execute at @a[scores={char=18,s2_timer=1..60,CC_silence=0}] run particle soul_fire_flame ~ ~1 ~ 0.3 0.8 0.3 0.01 1 force
execute at @a[scores={char=18,s2_timer=1,CC_silence=0}] run playsound entity.blaze.ambient master @a[distance=..10] ~ ~ ~ 1 0.1 1
effect give @a[scores={char=18,s2_timer=1,CC_silence=0}] regeneration 3 3
effect give @a[scores={char=18,s2_timer=1,CC_silence=0}] resistance 3 1
attribute @p[scores={char=18,s2_timer=1,CC_silence=0}] jump_strength base set 0
effect give @a[scores={char=18,s2_timer=2..40}] slowness 1 100
attribute @p[scores={char=18,s2_timer=2..40}] jump_strength base set 0
item replace entity @a[scores={char=18,s2_timer=1,CC_silence=0}] armor.head with player_head[minecraft:custom_name="Core",minecraft:enchantments={"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:100.0d,operation:"add_multiplied_base",slot:"head"}],minecraft:profile={id:[I;-2088556085,-83734688,-2129708947,-1030770170],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE0YTJlYTIxZDZjOTY5MzhhMjcxZmNmZjUyM2E2NTA3YjQ1NGY4NGJhZDk1OTkzZjQ0OTJhNmZiYzMwOTRmNSJ9fX0="}]}] 1
item replace entity @a[scores={char=18,s2_timer=1,CC_silence=0}] armor.chest with leather_chestplate[minecraft:trim={pattern:"ward",material:"quartz"},minecraft:custom_name="Armor",minecraft:dyed_color=7236457,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=18,s2_timer=60}] armor.head with player_head[minecraft:custom_name="Core",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-2088556085,-83734688,-2129708947,-1030770170],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE0YTJlYTIxZDZjOTY5MzhhMjcxZmNmZjUyM2E2NTA3YjQ1NGY4NGJhZDk1OTkzZjQ0OTJhNmZiYzMwOTRmNSJ9fX0="}]}] 1
item replace entity @a[scores={char=18,s2_timer=60}] armor.chest with leather_chestplate[minecraft:trim={pattern:"ward",material:"copper"},minecraft:custom_name="Armor",minecraft:dyed_color=7236457,minecraft:unbreakable={}] 1
attribute @p[scores={char=18,s2_timer=61..70}] minecraft:jump_strength base set 0.41


scoreboard players set @a[tag=sentrymode,scores={char=18,universal_death=1..}] spellCD1 0
scoreboard players set @a[tag=sentrymode,scores={char=18,universal_death=1..}] s1_timer 0
scoreboard players set @a[tag=sentrymode,scores={char=18,universal_death=1..}] s1_timer_recast 0

scoreboard players set @a[tag=sentrymode,scores={char=18,universal_death=1..}] spellCD1 160
scoreboard players set @a[tag=sentrymode,scores={char=18,universal_death=1..}] s1_timer_recast 1

#cannon mode ON

execute at @a[scores={char=18,s1_timer=1}] run playsound block.iron_trapdoor.close master @a[distance=..10] ~ ~ ~ 1 0.1 1

effect give @a[tag=sentrymode,scores={char=18}] slowness 99 5 true
effect give @a[tag=sentrymode,scores={char=18}] resistance 99 0 true
attribute @p[tag=sentrymode] minecraft:jump_strength base set 0

tag @a[scores={char=18,s1_timer=1}] add sentrymode
item replace entity @a[scores={char=18,s1_timer=1}] hotbar.0 with crossbow[minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:1,duration:1,show_particles:1b,show_icon:0b}]}}}]] 1
item replace entity @a[scores={char=18,s1_timer=1}] armor.head with player_head[minecraft:custom_name="Core",minecraft:enchantments={"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:100.0d,operation:"add_multiplied_base",slot:"head"}],minecraft:profile={id:[I;-2088556085,-83734688,-2129708947,-1030770170],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE0YTJlYTIxZDZjOTY5MzhhMjcxZmNmZjUyM2E2NTA3YjQ1NGY4NGJhZDk1OTkzZjQ0OTJhNmZiYzMwOTRmNSJ9fX0="}]}] 1

#cannon mode OFF
execute at @a[scores={char=18,s1_timer_recast=1}] run playsound block.iron_trapdoor.open master @a[distance=..10] ~ ~ ~ 1 0.1 1
effect clear @a[scores={char=18,s1_timer_recast=1}] resistance
effect clear @a[scores={char=18,s1_timer_recast=1}] slowness
attribute @p[scores={char=18,s1_timer_recast=1}] minecraft:jump_strength base set 0.41
tag @a[scores={char=18,s1_timer_recast=1}] remove sentrymode
item replace entity @a[scores={char=18,s1_timer_recast=2}] armor.head with player_head[minecraft:custom_name="Core",minecraft:enchantments={"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-2088556085,-83734688,-2129708947,-1030770170],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDE0YTJlYTIxZDZjOTY5MzhhMjcxZmNmZjUyM2E2NTA3YjQ1NGY4NGJhZDk1OTkzZjQ0OTJhNmZiYzMwOTRmNSJ9fX0="}]}] 1



execute at @a[scores={char=18,CC_disarm=1..}] run kill @e[tag=golemshot_ar]

# golem

scoreboard players set @a[scores={char=18}] MaxHP 28

scoreboard players add @a[scores={s0_timer=1..,char=18}] s0_timer 1
scoreboard players add @a[scores={s0_timer=2..,char=18},tag=sentrymode] s0_timer 2
scoreboard players set @a[scores={s0_timer=30..,char=18}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=18}] spellCD1 40
scoreboard players add @a[scores={s1_timer=1..,char=18}] s1_timer 1
scoreboard players set @a[scores={s1_timer=41..,char=18}] s1_timer 0

scoreboard players set @a[scores={s1_timer_recast=1,char=18}] s1_timer -1
scoreboard players set @a[scores={s1_timer_recast=1,char=18}] spellCD1 160
scoreboard players add @a[scores={s1_timer_recast=1..,char=18}] s1_timer_recast 1
scoreboard players set @a[scores={s1_timer_recast=161..,char=18}] s1_timer 0
scoreboard players set @a[scores={s1_timer_recast=161..,char=18}] s1_timer_recast 0

scoreboard players set @a[scores={s2_timer=1,char=18}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=18}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=18}] s2_timer 0



execute as @a[scores={char=18}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=18}] warped_fungus_on_a_stick[custom_data={s0:1}]

item replace entity @a[scores={char=18,s0_timer=0},tag=!sentrymode] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:1,duration:1,show_particles:1b,show_icon:0b}]}}}]] 1
item replace entity @a[scores={char=18,s0_timer=1..},tag=!sentrymode] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={}] 1

item replace entity @a[scores={char=18,s0_timer=0},tag=sentrymode] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:enchantments={"minecraft:soul_speed":1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:1,duration:1,show_particles:1b,show_icon:0b}]}}}]] 1
item replace entity @a[scores={char=18,s0_timer=1..},tag=sentrymode] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:enchantments={"minecraft:soul_speed":1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"Soul Cannon"},minecraft:unbreakable={}] 1


execute as @a[tag=sentrymode,scores={char=18,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=18}] carrot_on_a_stick[custom_data={s1:2}]
item replace entity @a[tag=sentrymode,scores={char=18,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:cauldron",minecraft:custom_name={text:"Cancel",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=!sentrymode,scores={char=18,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=18}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[tag=!sentrymode,scores={char=18,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:hopper",minecraft:custom_name={text:"Sentry Mode",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=18,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=18}] warped_fungus_on_a_stick
item replace entity @a[scores={char=18,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:blast_furnace",minecraft:custom_name={text:"Soul Furnace",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:soul_speed":1}] 1