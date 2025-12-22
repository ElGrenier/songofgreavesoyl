kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}]

scoreboard players set @e[tag=!shadowdancer_dash_damage_initiated] shadowdash_damage 0
tag @e add shadowdancer_dash_damage_initiated

execute at @a[scores={char=55,death_dash_reset=1..}] run kill @e[tag=dashes_shadowdancer]
execute at @a[scores={char=55,universal_death=1..}] run kill @e[tag=dashes_shadowdancer]
execute at @a[scores={char=55,CC_grounded=1..}] run kill @e[tag=dashes_shadowdancer]
execute at @a[scores={char=55,CC_root=1..}] run kill @e[tag=dashes_shadowdancer]
execute at @a[scores={char=55,CC_stun=1..}] run kill @e[tag=dashes_shadowdancer]
execute at @a[scores={char=55,CC_silence=1..}] run kill @e[tag=dashes_shadowdancer]

#umbra

#summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_cleave","umbra"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;471355576,-2144645552,-2071773487,1626073258],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}}}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:15,Amplifier:1b,Duration:19999980,ShowParticles:1b}]}

execute at @e[tag=umbra] run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0.001 5


#Adumbrate

scoreboard players set @a[scores={char=55,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=55,s1_timer=1,CC_silence=1..}] s1_timer 120


execute at @e[tag=umbra_cleave] unless entity @e[tag=gaiveslash_umbra_visual_core] run summon marker ~ ~ ~ {Tags:["gaiveslash_umbra_visual_core","entities_shadowdancer"]}
execute at @e[tag=umbra_cleave] run tp @e[tag=gaiveslash_umbra_visual_core] ~ ~1 ~
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~-5 0
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^3.5 ^ ^ 0.3 0 0.3 0 1 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^-3.5 ^ ^ 0.3 0 0.3 0 1 force
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~-5 0
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^3.5 ^ ^ 0.3 0 0.3 0 1 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^-3.5 ^ ^ 0.3 0 0.3 0 1 force
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~-5 0
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^3.5 ^ ^ 0.3 0 0.3 0 1 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^-3.5 ^ ^ 0.3 0 0.3 0 1 force
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~-5 0
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^3.5 ^ ^ 0.3 0 0.3 0 1 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^-3.5 ^ ^ 0.3 0 0.3 0 1 force
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~-5 0
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^3.5 ^ ^ 0.3 0 0.3 0 1 force
execute at @a[scores={char=55,s1_timer=36..45,CC_silence=0}] at @e[tag=gaiveslash_umbra_visual_core] run particle squid_ink ^-3.5 ^ ^ 0.3 0 0.3 0 1 force


execute at @a[scores={char=55}] unless entity @e[tag=gaiveslash_visual_core] run summon marker ~ ~ ~ {Tags:["gaiveslash_visual_core","entities_shadowdancer"]}
execute as @a[scores={char=55}] at @s run tp @e[tag=gaiveslash_visual_core] ~ ~1 ~
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~5 0
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^3.5 ^ ^ 0.3 0 0.3 0 6 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^-3.5 ^ ^ 0.3 0 0.3 0 6 force
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~5 0
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^3.5 ^ ^ 0.3 0 0.3 0 6 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^-3.5 ^ ^ 0.3 0 0.3 0 6 force
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~5 0
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^3.5 ^ ^ 0.3 0 0.3 0 6 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^-3.5 ^ ^ 0.3 0 0.3 0 6 force
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~5 0
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^3.5 ^ ^ 0.3 0 0.3 0 6 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^-3.5 ^ ^ 0.3 0 0.3 0 6 force
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~5 0
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle sweep_attack ^-3.5 ^ ^ 0.1 0 0.1 0 2 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^3.5 ^ ^ 0.3 0 0.3 0 6 force
execute at @a[scores={char=55,s1_timer=6..15,CC_silence=0}] at @e[tag=gaiveslash_visual_core] run particle crit ^-3.5 ^ ^ 0.3 0 0.3 0 6 force



execute at @a[scores={char=55,s1_timer=1}] run summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_cleave","umbra","entities_shadowdancer"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b},{id:"minecraft:blindness",amplifier:1b,duration:19999980}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":4340289},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:bolt"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;471355576,-2144645552,-2071773487,1626073258],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}},count:1}}}
tp @e[tag=umbra_cleave,limit=1] @a[scores={char=55,s1_timer=1},limit=1]

execute at @e[tag=glaive_spin_dash] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=55}] Team run scoreboard players set @a[scores={char=55,s1_timer=1..5}] s1_timer 6

execute at @a[scores={char=55,s1_timer=2,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=55,s1_timer=4,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 1.1 1
execute at @a[scores={char=55,s1_timer=6,CC_silence=0}] run playsound entity.player.attack.crit master @a[distance=..12] ~ ~ ~ 1 0.9 1
effect give @a[scores={char=55,s1_timer=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=55,s1_timer=6,CC_silence=0}] as @e[distance=0.5..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=55}] Team run tag @s add adumbrated
execute at @a[scores={char=55,s1_timer=1}] run summon marker ~ ~ ~ {Tags:["glaive_spin_dash","dashes_shadowdancer","entities_shadowdancer"]}
tp @e[tag=glaive_spin_dash,limit=1] @a[scores={char=55,s1_timer=1},limit=1]
execute at @a[scores={char=55,s1_timer=1},limit=1] run tp @e[tag=glaive_spin_dash,limit=1] ~ ~0.5 ~

execute at @a[scores={char=55,s1_timer=32,CC_silence=0}] at @e[tag=umbra_cleave] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=55,s1_timer=35,CC_silence=0}] at @e[tag=umbra_cleave] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=55,s1_timer=35,CC_silence=0}] at @e[tag=umbra_cleave] run playsound entity.phantom.hurt master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=55,s1_timer=44..45}] at @e[tag=umbra_cleave] run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0.001 100
execute at @a[scores={char=55,s1_timer=45}] run tp @e[tag=umbra_cleave] ~ ~-200 ~
execute at @a[scores={char=55,s1_timer=45}] run kill @e[tag=umbra_cleave]


execute as @e[tag=glaive_spin_dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=glaive_spin_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=glaive_spin_dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=glaive_spin_dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=glaive_spin_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=glaive_spin_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=glaive_spin_dash] at @s run tp @s ^ ^ ^0.6

tp @a[scores={char=55,s1_timer=1..6,death_dash_reset=0}] @e[tag=glaive_spin_dash,limit=1]
execute at @a[scores={char=55,s1_timer=6}] run kill @e[tag=glaive_spin_dash]
execute as @a[scores={char=55,s1_timer=6}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=55,s1_timer=6..11,CC_silence=0}] slow_falling


execute at @a[scores={char=55,s1_timer=30..36}] as @e[tag=umbra_cleave] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=55,s1_timer=36}] at @e[tag=umbra_cleave] as @e[distance=0.5..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=55}] Team run tag @s add adumbrated
execute at @a[scores={char=55,s1_timer=36}] at @e[tag=umbra_cleave] as @e[distance=0.5..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=55}] Team run effect give @s blindness 2


effect give @e[tag=adumbrated] slowness 2 1
execute at @e[tag=adumbrated] run particle damage_indicator ~ ~0.5 ~ 0.3 0.5 0.3 0 25
execute as @e[tag=adumbrated] run damage @s 5 generic by @p[scores={char=55}] from @p[scores={char=55}]
tag @e remove adumbrated




#shrouded step

scoreboard players set @a[scores={char=55,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=55,s2_timer=1,CC_silence=1..}] s2_timer 220


effect give @a[scores={char=55,s2_timer=1,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=55,s2_timer=1}] run kill @e[tag=dashes_shadowdancer]

execute at @a[scores={char=55,s2_timer=1,CC_silence=0}] run particle dust{color:[0.33,0.33,0.33],scale:1} ~ ~0.2 ~ 0.3 0.1 0.3 0 30
execute at @a[scores={char=55,s2_timer=1,CC_silence=0}] run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~0.2 ~ 0.3 0.1 0.3 0 30
execute at @a[scores={char=55,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=55,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.knockback master @a[distance=..12] ~ ~ ~ 1 1.3 1
execute at @a[scores={char=55,s2_timer=1}] run summon marker ~ ~ ~ {Tags:["shadowdash","dashes_shadowdancer","entities_shadowdancer"]}
execute at @a[scores={char=55,s2_timer=1}] run summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_dash","umbra","entities_shadowdancer"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b},{id:"minecraft:blindness",amplifier:1b,duration:19999980}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":4340289},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:bolt"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;471355576,-2144645552,-2071773487,1626073258],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}},count:1}}}

tp @e[tag=shadowdash,limit=1] @a[scores={char=55,s2_timer=1},limit=1]
tp @e[tag=umbra_dash,limit=1] @a[scores={char=55,s2_timer=1},limit=1]
execute at @a[scores={char=55,s2_timer=1},limit=1] run tp @e[tag=shadowdash,limit=1] ~ ~0.5 ~
#execute at @a[scores={char=55,s2_timer=1},limit=1] run tp @e[tag=umbra_dash,limit=1] ~ ~0.5 ~

execute as @e[tag=shadowdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=shadowdash] at @s run tp @s ^ ^ ^1.1

tp @a[scores={char=55,s2_timer=2..10,death_dash_reset=0}] @e[tag=shadowdash,limit=1]
execute at @a[scores={char=55,s2_timer=10}] run kill @e[tag=shadowdash]
execute as @a[scores={char=55,s2_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=55,s2_timer=10..11,CC_silence=0}] slow_falling

execute at @a[scores={char=55,s2_timer=1..10,CC_silence=0}] run particle squid_ink ~ ~1 ~ 0.4 0.8 0.4 0.001 2
execute at @a[scores={char=55,s2_timer=1..10,CC_silence=0}] run particle sweep_attack ~ ~1 ~ 0.8 0.5 0.8 0.1 2 normal

execute at @a[scores={char=55,s2_timer=31..40,CC_silence=0}] at @e[tag=umbra_dash] run particle squid_ink ~ ~1 ~ 0.4 0.8 0.4 0.001 2
execute at @a[scores={char=55,s2_timer=31..40,CC_silence=0}] at @e[tag=umbra_dash] run particle sweep_attack ~ ~1 ~ 0.8 0.5 0.8 0.1 2 normal


execute at @a[scores={char=55,s2_timer=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound entity.wither_skeleton.ambient master @a[distance=..12] ~ ~ ~ 0.6 0.5 1
execute at @a[scores={char=55,s2_timer=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound entity.vex.charge master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=55,s2_timer=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound entity.phantom.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1

execute at @a[scores={char=55,s2_timer=31..45,CC_silence=0}] as @e[tag=umbra_dash] at @s run tp @s ^ ^ ^1.2
execute at @a[scores={char=55,s2_timer=44..45}] at @e[tag=umbra_dash] run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0.001 100
execute at @a[scores={char=55,s2_timer=45}] run tp @e[tag=umbra_dash] ~ ~-200 ~
execute at @a[scores={char=55,s2_timer=45}] run kill @e[tag=umbra_dash]

execute at @a[scores={char=55,s2_timer=1..10}] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,scores={shadowdash_damage=0}] unless score @s Team = @p[scores={char=55}] Team run scoreboard players set @s shadowdash_damage 1
execute at @a[scores={char=55,s2_timer=31..40}] at @e[tag=umbra_dash] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,scores={shadowdash_damage=0}] unless score @s Team = @p[scores={char=55}] Team run effect give @s blindness 2
execute at @a[scores={char=55,s2_timer=31..40}] at @e[tag=umbra_dash] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,scores={shadowdash_damage=0}] unless score @s Team = @p[scores={char=55}] Team run scoreboard players set @s shadowdash_damage 1


scoreboard players add @e[scores={shadowdash_damage=1..}] shadowdash_damage 1
execute at @e[scores={shadowdash_damage=2}] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute as @e[scores={shadowdash_damage=2}] run damage @s 4 generic by @p[scores={char=55}] from @p[scores={char=55}]
scoreboard players set @e[scores={shadowdash_damage=10..}] shadowdash_damage 0

# shadowdancer

scoreboard players set @a[scores={char=55}] MaxHP 16

scoreboard players set @a[scores={s1_timer=1,char=55}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=55}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=55}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=55}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=55}] s2_timer 1
scoreboard players set @a[scores={s2_timer=240..,char=55}] s2_timer 0

execute as @a[scores={char=55}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=55}] netherite_shovel
item replace entity @a[scores={char=55}] hotbar.0 with minecraft:netherite_shovel[minecraft:item_model="minecraft:netherite_spear",minecraft:custom_name=[{color:"gray",text:"\""},{bold:1b,color:"gray",text:"Glavie"},{color:"gray",text:"\""}],minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=55,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=55}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=55,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:black_wool",minecraft:custom_name={text:"Adumbrate",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=55,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=55}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=55,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:music_disc_stal",minecraft:custom_name={text:"Shrouded Step",color:"dark_aqua",bold:1b}] 1

