

execute as @a store result score @s fire run data get entity @s Fire

tag @a[scores={CC_intangible=0}] add valid_spell_target
tag @a[scores={CC_intangible=1..}] remove valid_spell_target

#tag @a[scores={char=0}] remove archer_disarm
#tag @a[scores={char=2}] add archer_disarm
#tag @a[scores={char=7}] add archer_disarm
#tag @a[scores={char=11}] add archer_disarm

#execute as @a[tag=archer_disarm] run attribute @s minecraft:attack_damage base set 0
#execute as @a[tag=!archer_disarm] run attribute @s minecraft:attack_damage base set 1

execute if entity @a[scores={char=1}] run function chars:slayerspells
execute if entity @a[scores={char=2}] run function chars:huntressspells
execute if entity @a[scores={char=3}] run function chars:frozenpaladinspells
execute if entity @a[scores={char=4}] run function chars:warperspells
execute if entity @a[scores={char=5}] run function chars:crematorspells
execute if entity @a[scores={char=6}] run function chars:guidespells
execute if entity @a[scores={char=7}] run function chars:dragonspells
execute if entity @a[scores={char=8}] run function chars:trickstressspells
execute if entity @a[scores={char=9}] run function chars:sandcrawlerspells
execute if entity @a[scores={char=9}] run function chars:sandcrawler_anticheat
execute if entity @a[scores={char=10}] run function chars:krakenspells
execute if entity @a[scores={char=11}] run function chars:bombspells
execute if entity @a[scores={char=12}] run function chars:slimespells
execute if entity @a[scores={char=13}] run function chars:skeletalspells
execute if entity @a[scores={char=14}] run function chars:skyqueenspells
execute if entity @a[scores={char=15}] run function chars:shardspells
execute if entity @a[scores={char=16}] run function chars:treespiritspells
execute if entity @a[scores={char=17}] run function chars:techno_spells
execute if entity @a[scores={char=18}] run function chars:golemspells
execute if entity @a[scores={char=19}] run function chars:lunaticspells
execute if entity @a[scores={char=666}] run function chars:lunaticspells
execute if entity @a[scores={char=20}] run function chars:weaverspells
execute if entity @a[scores={char=21}] run function chars:necrospells
execute if entity @a[scores={char=22}] run function chars:devourerspells
execute if entity @a[scores={char=24}] run function chars:sandwitchspells
execute if entity @a[scores={char=25}] run function chars:scourgespells
execute if entity @a[scores={char=26}] run function chars:sharpshooterspells
execute if entity @a[scores={char=27}] run function chars:championspells
execute if entity @a[scores={char=28}] run function chars:operatorspells
execute if entity @a[scores={char=29}] run function chars:parasitespells
execute if entity @a[scores={char=30}] run function chars:engineerspells
execute if entity @a[scores={char=31}] run function chars:drownedspells
execute if entity @a[scores={char=32}] run function chars:emperorspells
execute if entity @a[scores={char=33}] run function chars:strayspells
execute if entity @a[scores={char=34}] run function chars:rainmakerspells
execute if entity @a[scores={char=35}] run function chars:priestessspells
execute if entity @a[scores={char=36}] run function chars:mazemasterspells
execute if entity @a[scores={char=37}] run function chars:shapelessspells
execute if entity @a[scores={char=38}] run function chars:wardenspells
execute if entity @a[scores={char=39}] run function chars:basiliskspells
execute if entity @a[scores={char=40}] run function chars:minerspells
execute if entity @a[scores={char=41}] run function chars:broodmotherspells
execute if entity @a[scores={char=42}] run function chars:frigedspells
execute if entity @a[scores={char=43}] run function chars:icewormspells
execute if entity @a[scores={char=44}] run function chars:raiderspells
execute if entity @a[scores={char=45}] run function chars:stargazerspells
execute if entity @a[scores={char=46}] run function chars:dreadnoughtspells
execute if entity @a[scores={char=47}] run function chars:mummyspells
execute if entity @a[scores={char=48}] run function chars:artificerspells
execute if entity @a[scores={char=49}] run function chars:aberrationspells
execute if entity @a[scores={char=50}] run function chars:chaosspells
execute if entity @a[scores={char=51}] run function chars:jesterspells
execute if entity @a[scores={char=52}] run function chars:sandbenderspells
execute if entity @a[scores={char=53}] run function chars:sirenspells
execute if entity @a[scores={char=54}] run function chars:shamanspells
execute if entity @a[scores={char=55}] run function chars:shadowdancerspells
execute if entity @a[scores={char=56}] run function chars:smokebridespells
execute if entity @a[scores={char=57}] run function chars:runawayspells
execute if entity @a[scores={char=58}] run function chars:purifierspells
execute if entity @a[scores={char=59}] run function chars:redmoldspells
execute if entity @a[scores={char=60}] run function chars:starfatherspells
execute if entity @a[scores={char=61}] run function chars:cryomancerspells
execute if entity @a[scores={char=62}] run function chars:thornfiendspells
execute if entity @a[scores={char=63}] run function chars:druidspells
execute if entity @a[scores={char=64}] run function chars:scarletspells
execute if entity @a[scores={char=65}] run function chars:ghoulspells
execute if entity @a[scores={char=66}] run function chars:lichspells
execute if entity @a[scores={char=67}] run function chars:revenantspells
execute if entity @a[scores={char=68}] run function chars:enforcerspells
execute if entity @a[scores={char=69}] run function chars:painterspells
#execute if entity @a[scores={char=70}] run function chars:djinnspells

execute if entity @a[scores={char=23}] run function chars:prowlerspells

function chars:projetcile_removal

#Why not set it to a map_type 4 for 1v1 map ? #TO DO
execute if score map settings matches 5 run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if score map settings matches 9 run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if score map settings matches 15 run effect give @a[scores={universal_kill=1..}] regeneration 6 4
execute if score map settings matches 21 run effect give @a[scores={universal_kill=1..}] regeneration 6 4

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







