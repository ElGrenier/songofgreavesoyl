

execute as @a store result score @s fire run data get entity @s Fire

tag @a[scores={CC_intangible=0}] add valid_spell_target
tag @a[scores={CC_intangible=1..}] remove valid_spell_target

#tag @a[scores={char=0}] remove archer_disarm
#tag @a[scores={char=2}] add archer_disarm
#tag @a[scores={char=7}] add archer_disarm
#tag @a[scores={char=11}] add archer_disarm

#execute as @a[tag=archer_disarm] run attribute @s minecraft:attack_damage base set 0
#execute as @a[tag=!archer_disarm] run attribute @s minecraft:attack_damage base set 1

execute if entity @a[scores={char=1}] run function chars:spells_demonslayer
execute if entity @a[scores={char=2}] run function chars:spells_huntress
execute if entity @a[scores={char=3}] run function chars:spells_frozenpaladin
execute if entity @a[scores={char=4}] run function chars:spells_warper
execute if entity @a[scores={char=5}] run function chars:spells_cremator
execute if entity @a[scores={char=6}] run function chars:spells_guide
execute if entity @a[scores={char=7}] run function chars:spells_dragon
execute if entity @a[scores={char=8}] run function chars:spells_trickstress
execute if entity @a[scores={char=9}] run function chars:spells_sandcrawler
execute if entity @a[scores={char=9}] run function chars:sandcrawler_anticheat
execute if entity @a[scores={char=10}] run function chars:spells_kraken
execute if entity @a[scores={char=11}] run function chars:spells_bombmaster
execute if entity @a[scores={char=12}] run function chars:spells_slimecore
execute if entity @a[scores={char=13}] run function chars:spells_skeletalphantom
execute if entity @a[scores={char=14}] run function chars:spells_skyqueen
execute if entity @a[scores={char=15}] run function chars:spells_shard
execute if entity @a[scores={char=16}] run function chars:spells_treespirit
execute if entity @a[scores={char=17}] run function chars:spells_technomancer
execute if entity @a[scores={char=18}] run function chars:spells_golem
execute if entity @a[scores={char=19}] run function chars:spells_lunatic
execute if entity @a[scores={char=666}] run function chars:spells_lunatic
execute if entity @a[scores={char=20}] run function chars:spells_weaver
execute if entity @a[scores={char=21}] run function chars:spells_necrolord
execute if entity @a[scores={char=22}] run function chars:spells_devourer
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
execute if entity @a[scores={char=62}] run function chars:spells_thornfiend
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

execute if entity @a[scores={char=23}] run function chars:spells_prowler

function chars:projetcile_removal

execute if entity @e[tag=Settings,scores={Map=5}] run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if entity @e[tag=Settings,scores={Map=9}] run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if entity @e[tag=Settings,scores={Map=15}] run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if entity @e[tag=Settings,scores={Map=21}] run effect give @a[scores={universal_kill=1..}] regeneration 6 4

scoreboard players set @a[scores={universal_damagetaken=1..}] outofcombat 0

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

scoreboard players set @a[scores={s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {showkit: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] showkit 1
scoreboard players set @a[scores={s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {showkit: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] showkit 1

scoreboard players set @a[scores={s0_use=1..,s0_timer=0},nbt={SelectedItem:{components: {"minecraft:custom_data": {s0: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s0_timer 1
scoreboard players set @a[scores={s0_drop=1..,s0_timer=0},nbt={SelectedItem:{components: {"minecraft:custom_data": {s0: 1}}, count: 1, id: "minecraft:warped_fungus_on_a_stick"}}] s0_timer 1

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
execute as @a[scores={universal_death=1..}] as @s run attribute @s attack_damage base set 1

scoreboard players set @a[scores={universal_hit=1..}] universal_hit 0
scoreboard players set @a[scores={universal_shoot=1..}] universal_shoot 0
scoreboard players set @a[scores={universal_kill=1..}] universal_kill 0
scoreboard players set @a[scores={universal_damagetaken=1..}] universal_damagetaken 0
scoreboard players set @a[scores={universal_sneak=1..}] universal_sneak 0
scoreboard players set @a[scores={universal_death=1..}] universal_death 0
scoreboard players set @a[scores={universal_walk=1..}] universal_walk 0
scoreboard players set @a[scores={universal_sprint=1..}] universal_sprint 0
scoreboard players set @a[scores={universal_damagetaken_shield=1..}] universal_damagetaken_shield 0
scoreboard players set @a[scores={universal_jump=1..}] universal_jump 0

scoreboard players add @a[scores={death_dash_reset=1..}] death_dash_reset 1
scoreboard players set @a[scores={death_dash_reset=20..}] death_dash_reset 0







