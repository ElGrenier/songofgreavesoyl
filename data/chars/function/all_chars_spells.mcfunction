


execute as @a store result score @s fire run data get entity @s Fire

tag @a[scores={CC_intangible=0}] add valid_spell_target
tag @a[scores={CC_intangible=1..}] remove valid_spell_target

#crit disable (just like in idol clash!)
execute as @a unless predicate chars:cant_crit run attribute @s minecraft:attack_damage modifier add no_crit -.3333333 add_multiplied_total
execute as @a if predicate chars:cant_crit run attribute @s minecraft:attack_damage modifier remove no_crit


execute as @a[scores={char=1..,universal_hit_shield=1..}] run scoreboard players operation @s universal_hit = @s universal_hit_shield

#clearing the mount message from knockup entity (this is here to not overwrite whatever specific characters have in their actionbars)
execute if entity @e[tag=the_knockup] run title @a[scores={CC_knockup=1..}] actionbar {"text":" "}


execute if entity @a[scores={char=62}] run function chars:spells_thornfiend

execute if entity @a[scores={char=1}] run function chars:spells_demonslayer
execute if entity @a[scores={char=2}] run function chars:spells_huntress
execute if entity @a[scores={char=3}] run function chars:spells_frozenpaladin
execute if entity @a[scores={char=4}] run function chars:spells_warper
execute if entity @a[scores={char=5}] run function chars:spells_cremator
execute if entity @a[scores={char=6}] run function chars:spells_guide
execute if entity @a[scores={char=7}] run function chars:spells_dragon
execute if entity @a[scores={char=8}] run function chars:spells_trickstress
execute if entity @a[scores={char=9}] run function chars:spells_sandcrawler
execute if entity @a[scores={char=10}] run function chars:spells_kraken
execute if entity @a[scores={char=11}] run function chars:spells_bombmaster
execute if entity @a[scores={char=12}] run function chars:spells_slimecore
execute if entity @a[scores={char=13}] run function chars:spells_skeletalphantom
execute if entity @a[scores={char=14}] run function chars:spells_skyqueen
execute if entity @a[scores={char=15}] run function chars:spells_shard
execute if entity @a[scores={char=16}] run function chars:spells_treespirit
#technomancer below so he can parry abilities
execute if entity @a[scores={char=18}] run function chars:spells_golem
execute if entity @a[scores={char=19}] run function chars:spells_lunatic
execute if entity @a[scores={char=666}] run function chars:spells_lunatic
execute if entity @a[scores={char=20}] run function chars:spells_weaver
execute if entity @a[scores={char=21}] run function chars:spells_necrolord
execute if entity @a[scores={char=22}] run function chars:spells_devourer
#prowler is on the bottom so his fucking passive shield works, I hate my pitiful existence, HATE, HATE, HATE
execute if entity @a[scores={char=24}] run function chars:spells_sandwitch
execute if entity @a[scores={char=25}] run function chars:spells_scourge
execute if entity @a[scores={char=26}] run function chars:spells_renegade
execute if entity @a[scores={char=27}] run function chars:spells_champion
execute if entity @a[scores={char=28}] run function chars:spells_operator
execute if entity @a[scores={char=29}] run function chars:spells_
execute if entity @a[scores={char=30}] run function chars:spells_engineer
execute if entity @a[scores={char=31}] run function chars:spells_drownedcaptain
execute if entity @a[scores={char=32}] run function chars:spells_emperor
execute if entity @a[scores={char=33}] run function chars:spells_stray
execute if entity @a[scores={char=34}] run function chars:spells_rainmaker
execute if entity @a[scores={char=35}] run function chars:spells_priestess
execute if entity @a[scores={char=36}] run function chars:spells_mazemaster
execute if entity @a[scores={char=37}] run function chars:spells_shapeless
execute if entity @a[scores={char=38}] run function chars:spells_warden
execute if entity @a[scores={char=39}] run function chars:spells_basilisk
execute if entity @a[scores={char=40}] run function chars:spells_miner
execute if entity @a[scores={char=41}] run function chars:spells_broodmother
execute if entity @a[scores={char=42}] run function chars:spells_friged
execute if entity @a[scores={char=43}] run function chars:spells_iceworm
execute if entity @a[scores={char=44}] run function chars:spells_desertraider
execute if entity @a[scores={char=45}] run function chars:spells_stargazer
execute if entity @a[scores={char=46}] run function chars:spells_dreadnought
execute if entity @a[scores={char=47}] run function chars:spells_mummy
execute if entity @a[scores={char=48}] run function chars:spells_artificer
execute if entity @a[scores={char=49}] run function chars:spells_aberration
execute if entity @a[scores={char=50}] run function chars:spells_crawlingchaos
execute if entity @a[scores={char=51}] run function chars:spells_jester
execute if entity @a[scores={char=52}] run function chars:spells_sandbender
execute if entity @a[scores={char=53}] run function chars:spells_stitchedsiren
execute if entity @a[scores={char=54}] run function chars:spells_shaman
execute if entity @a[scores={char=55}] run function chars:spells_shadowdancer
execute if entity @a[scores={char=56}] run function chars:spells_smokebride
execute if entity @a[scores={char=57}] run function chars:spells_runaway
execute if entity @a[scores={char=58}] run function chars:spells_purifier
execute if entity @a[scores={char=59}] run function chars:spells_redmold
execute if entity @a[scores={char=60}] run function chars:spells_starfather
execute if entity @a[scores={char=61}] run function chars:spells_cryomancer
#thorn fiend at the beginning so his thorns don't on ability his
execute if entity @a[scores={char=63}] run function chars:spells_druid
execute if entity @a[scores={char=64}] run function chars:spells_scarletlady
execute if entity @a[scores={char=65}] run function chars:spells_ghoul
execute if entity @a[scores={char=66}] run function chars:spells_lich
execute if entity @a[scores={char=67}] run function chars:spells_revenant
execute if entity @a[scores={char=68}] run function chars:spells_enforcer
execute if entity @a[scores={char=69}] run function chars:spells_painter
execute if entity @a[scores={char=70}] run function chars:spells_bard
execute if entity @a[scores={char=71}] run function chars:spells_alternate
execute if entity @a[scores={char=72}] run function chars:spells_caretaker
execute if entity @a[scores={char=73}] run function chars:spells_conductor
execute if entity @a[scores={char=74}] run function chars:spells_fortress
execute if entity @a[scores={char=75}] run function chars:spells_glasswonder

execute if entity @a[scores={char=17}] run function chars:spells_technomancer

execute if entity @a[scores={char=23}] run function chars:spells_prowler

function chars:projetcile_removal

execute as @a store result score @s MaxHP run attribute @s max_health get


execute as @a[advancements={chars:any_damage_check=true}] run advancement revoke @s only chars:any_damage_check
execute as @a[advancements={chars:any_damage_taken=true}] run advancement revoke @s only chars:any_damage_taken


# duels regen

execute if score map settings matches 5 run effect give @a[scores={universal_kill=1..}] regeneration 3 6 true
execute if score map settings matches 9 run effect give @a[scores={universal_kill=1..}] regeneration 3 6 true
execute if score map settings matches 15 run effect give @a[scores={universal_kill=1..}] regeneration 3 6 true
execute if score map settings matches 21 run effect give @a[scores={universal_kill=1..}] regeneration 3 6 true

scoreboard players set @a[scores={universal_damagetaken=1..}] outofcombat 0
scoreboard players set @a[scores={universal_damagetaken_shield=1..}] outofcombat 0
scoreboard players set @a[scores={universal_hit=1..}] outofcombat 0
scoreboard players set @a[scores={universal_hit_shield=1..}] outofcombat 0

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

#surrender checks

scoreboard players set @a[scores={surrender=0,s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] surrender 1
scoreboard players set @a[scores={surrender=0,s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] surrender 1

scoreboard players set @a[scores={cancel_sur=0,s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] cancel_sur 1
scoreboard players set @a[scores={cancel_sur=0,s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] cancel_sur 1

#showkit

scoreboard players set @a[scores={s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {showkit: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] showkit 1
scoreboard players set @a[scores={s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {showkit: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] showkit 1

scoreboard players set @a[scores={s0_use=1..,s0_timer=0},nbt={SelectedItem:{components: {"minecraft:custom_data": {s0: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s0_timer 1
scoreboard players set @a[scores={s0_drop=1..,s0_timer=0},nbt={SelectedItem:{components: {"minecraft:custom_data": {s0: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s0_timer 1

#abilities

scoreboard players set @a[scores={s1_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s1: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s1_timer 1
scoreboard players set @a[scores={s1_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s1: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s1_timer 1
scoreboard players set @a[scores={s1_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s1: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s1_timer_recast 1
scoreboard players set @a[scores={s1_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s1: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s1_timer_recast 1

scoreboard players set @a[scores={s2_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s2: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s2_timer 1
scoreboard players set @a[scores={s2_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s2: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s2_timer 1
scoreboard players set @a[scores={s2_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s2: 2}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s2_timer_recast 1
scoreboard players set @a[scores={s2_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s2: 2}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s2_timer_recast 1

scoreboard players set @a[scores={s3_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s3: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s3_timer 1
scoreboard players set @a[scores={s3_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s3: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] s3_timer 1

scoreboard players set @a[scores={s4_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s4: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s4_timer 1
scoreboard players set @a[scores={s4_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {s4: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s4_timer 1

scoreboard players set @a[scores={s0_use=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {franklo_failsafe: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] ClassPickTrigger 8
scoreboard players set @a[scores={s0_drop=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {franklo_failsafe: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] ClassPickTrigger 8

scoreboard players set @a[scores={s1_use=1..}] s1_use 0
scoreboard players set @a[scores={s1_drop=1..}] s1_drop 0
scoreboard players set @a[scores={s2_use=1..}] s2_use 0
scoreboard players set @a[scores={s2_drop=1..}] s2_drop 0
scoreboard players set @a[scores={s3_use=1..}] s3_use 0
scoreboard players set @a[scores={s3_drop=1..}] s3_drop 0
scoreboard players set @a[scores={s4_use=1..}] s4_use 0
scoreboard players set @a[scores={s4_drop=1..}] s4_drop 0

scoreboard players set @a[scores={s0_use=1..}] s0_use 0
scoreboard players set @a[scores={s0_drop=1..}] s0_drop 0

execute as @a[scores={universal_death=1..}] as @s run attribute @s jump_strength base set 0.41
execute as @a[scores={universal_death=1..}] as @s run attribute @s movement_speed base set 0.1
execute as @a[scores={universal_death=1..}] as @s run attribute @s attack_damage base set 0
execute as @a[scores={universal_death=1..}] as @s run attribute @s scale base set 1

# in and out of combat

scoreboard players add @a[scores={universal_hit=1..}] in_combat 1
scoreboard players add @a[scores={universal_hit_shield=1..}] in_combat 1
scoreboard players add @a[scores={universal_spell_hit=1..}] in_combat 1
scoreboard players add @a[scores={universal_damagetaken=1..}] in_combat 1
scoreboard players add @a[scores={universal_damagetaken_shield=1..}] in_combat 1
scoreboard players add @a[scores={in_combat=1..}] in_combat 1

execute if score map_type settings matches 1..3 run execute as @a[scores={in_combat=1..},team=purple] at @s if entity @e[team=yellow,distance=..6] run scoreboard players set @s out_of_combat 0
execute if score map_type settings matches 1..3 run execute as @a[scores={in_combat=1..},team=yellow] at @s if entity @e[team=purple,distance=..6] run scoreboard players set @s out_of_combat 0

execute if score map_type settings matches 4 run execute as @a[scores={in_combat=1..}] at @s if entity @a[distance=0.5..6] run scoreboard players set @s out_of_combat 0

execute as @a[scores={in_combat=1..},tag=PracticeRoom,team=purple] at @s if entity @e[team=!purple,distance=..6] run scoreboard players set @s out_of_combat 0
execute as @a[scores={in_combat=1..},tag=PracticeRoom,team=yellow] at @s if entity @e[team=!yellow,distance=..6] run scoreboard players set @s out_of_combat 0
execute as @a[scores={in_combat=1..},tag=PracticeRoom,team=!yellow,team=!purple] at @s if entity @a[distance=0.5..6] run scoreboard players set @s out_of_combat 0


scoreboard players add @a out_of_combat 1
scoreboard players set @a[scores={out_of_combat=300..}] out_of_combat 300


scoreboard players set @a[scores={universal_hit=1..}] out_of_combat 0
scoreboard players set @a[scores={universal_hit_shield=1..}] out_of_combat 0
scoreboard players set @a[scores={universal_spell_hit=1..}] out_of_combat 0
scoreboard players set @a[scores={universal_damagetaken=1..}] out_of_combat 0
scoreboard players set @a[scores={universal_damagetaken_shield=1..}] out_of_combat 0

scoreboard players set @a[scores={out_of_combat=100..}] in_combat 0


# charm going off on damage (should be in chars:cc_actual, but due to function order it must be here)

scoreboard players set @a[scores={universal_damagetaken=1..,CC_charm=3..}] CC_charm 2
scoreboard players set @a[scores={universal_damagetaken_shield=1..,CC_charm=3..}] CC_charm 2

# damage taken and dealt stats

# dealt (pain) (this is impossible this does not work)

#execute as @a[scores={universal_damagetaken=0}] store result score @s hp_after_dmg run scoreboard players get @s HP
#execute as @a[scores={universal_damagetaken=1..}] store result score @s hp_after_dmg run scoreboard players get @s HP
#execute as @a[scores={universal_damagetaken=1..}] run say target
#execute as @a[scores={universal_damagetaken=1..}] on attacker run say attacker
#execute as @a[scores={universal_damagetaken=1..}] as @s run tellraw @a [{text:"before dmg: "},{score:{name:"@s",objective:"hp_before_dmg"},color:"dark_green",type:"score"}]
#execute as @a[scores={universal_damagetaken=1..}] as @s run tellraw @a [{text:"after dmg: "},{score:{name:"@s",objective:"hp_after_dmg"},color:"dark_green",type:"score"}]
#execute as @a[scores={universal_damagetaken=1..}] store result score @s hp_damage_taken run scoreboard players operation @s hp_before_dmg -= @s hp_after_dmg    
#execute as @a[scores={universal_damagetaken=1..}] as @s run tellraw @a [{text:"taken dmg: "},{score:{name:"@s",objective:"hp_damage_taken"},color:"dark_green",type:"score"}]
#execute as @a[scores={universal_damagetaken=1..}] as @s run scoreboard players operation @s StatDamageTaken += @s hp_damage_taken
#execute as @a[scores={universal_damagetaken=1..}] on attacker store result score @s damage_deatl run scoreboard players get @p[scores={universal_damagetaken=1..}] hp_damage_taken 
#execute as @e[scores={damage_deatl=1..}] run scoreboard players operation @s StatDamageDealt += @s damage_deatl

#scoreboard players set @e[scores={hp_after_dmg=1..}] hp_after_dmg 0
#scoreboard players set @e[scores={hp_damage_taken=1..}] hp_damage_taken 0
#scoreboard players set @e[scores={damage_deatl=1..}] damage_deatl 0
#execute as @a[advancements={chars:any_damage_taken=true}] run advancement revoke @s only chars:any_damage_taken

#universals

scoreboard players set @a[scores={universal_hit=1..}] universal_hit 0
scoreboard players set @a[scores={universal_hit_shield=1..}] universal_hit_shield 0
scoreboard players set @a[scores={universal_spell_hit=1..}] universal_spell_hit 0
scoreboard players set @a[scores={universal_shoot=1..}] universal_shoot 0
scoreboard players set @a[scores={universal_kill=1..}] universal_kill 0
scoreboard players set @a[scores={universal_damagetaken=1..}] universal_damagetaken 0
scoreboard players set @a[scores={universal_sneak=1..}] universal_sneak 0
scoreboard players set @a[scores={universal_death=1..}] universal_death 0
scoreboard players set @a[scores={universal_walk=1..}] universal_walk 0
scoreboard players set @a[scores={universal_sprint=1..}] universal_sprint 0
scoreboard players set @a[scores={universal_damagetaken_shield=1..}] universal_damagetaken_shield 0
scoreboard players set @a[scores={universal_jump=1..}] universal_jump 0
scoreboard players set @a[scores={universal_damageresisted=1..}] universal_damageresisted 0

scoreboard players add @a[scores={death_dash_reset=1..}] death_dash_reset 1
scoreboard players set @a[scores={death_dash_reset=40..}] death_dash_reset 0







