
execute unless entity @a[scores={char=1}] run kill @e[tag=entities_slayer]

execute unless entity @a[scores={char=2}] run kill @e[tag=entities_huntress]

execute unless entity @a[scores={char=3}] at @e[tag=icewall] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace ice
execute unless entity @a[scores={char=3}] run kill @e[tag=entities_frozenpaladin]
execute unless entity @a[scores={char=3}] run scoreboard players set @a[scores={icyaura=1..}] icyaura 0
execute unless entity @a[scores={char=3}] run scoreboard players set @a[scores={chillrend_root_vis=1..}] chillrend_root_vis 0

execute unless entity @a[scores={char=4}] run kill @e[tag=entities_warper]

execute unless entity @a[scores={char=5}] at @e[tag=incinerate] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace fire
execute unless entity @a[scores={char=5}] at @e[tag=fireremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace fire
execute unless entity @a[scores={char=5}] run kill @e[tag=entities_cremator]

execute unless entity @a[scores={char=6}] run kill @e[tag=entities_guide]

execute unless entity @a[scores={char=7}] run kill @e[tag=entities_dragon]

execute unless entity @a[scores={char=8}] run kill @e[tag=entities_trickstress]

execute unless entity @a[scores={char=9}] run kill @e[tag=entities_sandcrawler]

execute unless entity @a[scores={char=10}] run scoreboard players set @a[scores={abyss=1..}] abyss 0
execute unless entity @a[scores={char=10}] run tp @a[scores={abyss=1..}] @e[tag=abyssmarker,limit=1]
execute unless entity @a[scores={char=10}] run kill @e[tag=entities_kraken]

execute unless entity @a[scores={char=11}] run kill @e[tag=entities_bombmaster]

execute unless entity @a[scores={char=12}] run kill @e[tag=entities_slimecore]

execute unless entity @a[scores={char=14}] run kill @e[tag=entities_skyqueen]
execute unless entity @a[scores={char=14}] run scoreboard players set @a[scores={nestduration=1..}] nestduration 0
execute unless entity @a[scores={char=14}] run tag @a remove nest

execute unless entity @a[scores={char=15}] at @e[tag=containment_cube] run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 air replace magenta_stained_glass
execute unless entity @a[scores={char=15}] at @a[scores={shard_petrify=1..}] run fill ~2 ~3 ~2 ~-2 ~-2 ~-2 air replace magenta_stained_glass
execute unless entity @a[scores={char=15}] run scoreboard players set @a[scores={shard_petrify=1..}] shard_petrify 0
execute unless entity @a[scores={char=15}] run kill @e[tag=entities_shard]

execute unless entity @a[scores={char=17}] run kill @e[tag=entities_technomancer]
execute unless entity @a[scores={char=17}] run tag @a remove techno_melee
execute unless entity @a[scores={char=17}] run tag @a remove techno_ranged

execute unless entity @a[scores={char=18}] run kill @e[tag=entities_golem]

execute unless entity @a[scores={char=666}] run kill @e[tag=entities_demon]

execute unless entity @a[scores={char=20}] at @e[tag=snare_webs] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace cobweb
execute unless entity @a[scores={char=20}] run kill @e[tag=entities_weaver]

execute unless entity @a[scores={char=21}] at @e[tag=tomb] run fill ~4 ~4 ~4 ~-4 ~-2 ~-4 air replace blue_ice
execute unless entity @a[scores={char=21}] at @e[tag=sanctuary] run fill ~4 ~4 ~4 ~-4 ~-2 ~-4 air replace blue_ice
execute unless entity @a[scores={char=21}] run kill @e[tag=entities_necrolord]
execute unless entity @a[scores={char=21}] run scoreboard players set @a[scores={chilledroot_visual=1..}] chilledroot_visual 0
execute unless entity @a[scores={char=21}] run scoreboard players set @a[scores={curse=1..}] curse 0

execute unless entity @a[scores={char=22}] run kill @e[tag=entities_devourer]

execute unless entity @a[scores={char=23}] run tag @a remove prowlermark
execute unless entity @a[scores={char=23}] run tag @a remove sand_barrier
execute unless entity @a[scores={char=23}] run kill @e[tag=entities_prowler]

execute unless entity @a[scores={char=24}] run kill @e[tag=entities_sandwitch]

execute unless entity @a[scores={char=25}] at @e[tag=firestream] run fill ~15 ~15 ~15 ~-15 ~-7 ~-15 minecraft:air replace minecraft:fire
execute unless entity @a[scores={char=25}] at @e[tag=firenomore] run fill ~15 ~15 ~15 ~-15 ~-7 ~-15 minecraft:air replace minecraft:fire
execute unless entity @a[scores={char=25}] run kill @e[tag=entities_scourge]

execute unless entity @a[scores={char=26}] run kill @e[tag=entities_renegade]
execute unless entity @a[scores={char=26}] run scoreboard players set @a[scores={cruelty=1..}] cruelty 0

execute unless entity @a[scores={char=27}] run kill @e[tag=entities_champion]

execute unless entity @a[scores={char=28}] run kill @e[tag=entities_operator]

execute unless entity @a[scores={char=30}] run kill @e[tag=entities_engineer]

execute unless entity @a[scores={char=31}] run scoreboard players set @a[scores={keelhauling=1..}] keelhauling 0
execute unless entity @a[scores={char=31}] run kill @e[tag=entities_drownedcaptain]

execute unless entity @a[scores={char=32}] run kill @e[tag=entities_emperor]

execute unless entity @a[scores={char=33}] run kill @e[tag=entities_stray]
execute unless entity @a[scores={char=33}] run scoreboard players set @a[scores={stray_terrorradius=1..}] stray_terrorradius 0

execute unless entity @a[scores={char=34}] run kill @e[tag=entities_rainmaker]

execute unless entity @a[scores={char=35}] run kill @e[tag=entities_priestess]

execute unless entity @a[scores={char=36}] run kill @e[tag=entities_mazemaster]

execute unless entity @a[scores={char=37}] run scoreboard players set @a[scores={void=1..}] void 0
execute unless entity @a[scores={char=37}] run tp @a[scores={void=1..}] @e[tag=voidmarker,limit=1]
execute unless entity @a[scores={char=37}] run kill @e[tag=voidmarker]
execute unless entity @a[scores={char=37}] run tag @a remove remember_me
execute unless entity @a[scores={char=37}] run kill @e[tag=entities_shapeless]

execute unless entity @a[scores={char=38}] run kill @e[tag=entities_warden]
execute unless entity @a[scores={char=38}] run tag @a remove outlaw

execute unless entity @a[scores={char=39}] run kill @e[tag=entities_basilik]
execute unless entity @a[scores={char=39}] as @a[scores={basilisk_petrify=1..}] run attribute @s minecraft:knockback_resistance base set 0
execute unless entity @a[scores={char=39}] run scoreboard players set @a[scores={basilisk_petrify=1..}] basilisk_petrify 0
execute unless entity @a[scores={char=39}] run scoreboard players set @a[scores={basilisk_venom=1..}] basilisk_venom 0

execute unless entity @a[scores={char=40}] run kill @e[tag=entities_miner]
execute unless entity @a[scores={char=40}] run tag @a remove taunt_source_miner

execute unless entity @a[scores={char=41}] run kill @e[tag=entities_broodmother]

execute unless entity @a[scores={char=42}] run kill @e[tag=frigeddash]
execute unless entity @a[scores={char=42}] run scoreboard players set @a[scores={frostbite=1..}] frostbite 0

execute unless entity @a[scores={char=43}] run kill @e[tag=entities_iceworm]

execute unless entity @a[scores={char=44}] run kill @e[tag=entities_raider]
execute unless entity @a[scores={char=44}] run scoreboard players set @a[scores={constrict=1..}] constrict 0

execute unless entity @a[scores={char=45}] run kill @e[tag=entities_stargazer]
execute unless entity @a[scores={char=45}] run scoreboard players set @e[scores={fate_snared=1..}] fate_snared 0

execute unless entity @a[scores={char=46}] run kill @e[tag=entities_dreadnought]
execute unless entity @a[scores={char=46}] run scoreboard players set @a[scores={bludgeon=1..}] bludgeon 0

execute unless entity @a[scores={char=47}] run kill @e[tag=entities_mummy]
execute unless entity @a[scores={char=47}] run scoreboard players set @a[scores={embrace=1..}] embrace 0

execute unless entity @a[scores={char=48}] run kill @e[tag=entities_artificer]
execute unless entity @a[scores={char=48}] run scoreboard players set @a[scores={scatter=1..}] scatter 0
execute unless entity @a[scores={char=48}] run scoreboard players set @a[scores={holding_debris=1..}] holding_debris 0

execute unless entity @a[scores={char=49}] run scoreboard players set @a[scores={aber_s1_debuff=1..}] aber_s1_debuff 0
execute unless entity @a[scores={char=49}] run scoreboard players set @a[scores={aber_s2_buff=1..}] aber_s2_buff 0

execute as @e[tag=court_pillar] at @s unless entity @a[scores={char=50}] run fill ~4 ~-4 ~4 ~-4 ~4 ~-4 minecraft:air replace reinforced_deepslate
execute unless entity @a[scores={char=50}] run kill @e[tag=court_pillar]

execute unless entity @a[scores={char=51}] run kill @e[tag=entities_jester]
execute unless entity @a[scores={char=51}] run tag @a remove taunt_source_jester

execute unless entity @a[scores={char=52}] run kill @e[tag=entities_sandbender]
execute unless entity @a[scores={char=52}] run scoreboard players set @a[scores={sandgrasp=1..}] sandgrasp 0

execute unless entity @a[scores={char=53}] run kill @e[tag=entities_stitchedsiren]

execute unless entity @a[scores={char=54}] run scoreboard players set @a[scores={shaman_damage=1..}] shaman_damage 0
execute unless entity @a[scores={char=54}] run scoreboard players set @a[scores={abysssigil=1..}] abysssigil 0
execute unless entity @a[scores={char=54}] run kill @e[tag=entities_shaman]

execute unless entity @a[scores={char=55}] run kill @e[tag=entities_shadowdancer]

execute unless entity @a[scores={char=56}] run kill @e[tag=entities_smokebride]
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_decay_initial=1..}] asphyxiation_decay_initial 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_decay=1..}] asphyxiation_decay 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_timer=1..}] asphyxiation_timer 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation=1..}] asphyxiation 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_immunity=1..}] asphyxiation_immunity 0

execute unless entity @a[scores={char=57}] run kill @e[tag=entities_runaway]
execute unless entity @a[scores={char=57}] run tag @a remove runaway_hold
execute unless entity @a[scores={char=57}] run tag @a remove runaway_pull


execute unless entity @a[scores={char=58}] at @e[tag=expurgation_explosion] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:fire
execute unless entity @a[scores={char=58}] run kill @e[tag=entities_purifier]
execute unless entity @a[scores={char=58}] run tag @a remove purifier

execute unless entity @a[scores={char=59}] run kill @e[tag=entities_redmold]
execute unless entity @a[scores={char=59}] run tag @e remove the_mold

execute unless entity @a[scores={char=60}] run kill @e[tag=entities_starfather]

execute unless entity @a[scores={char=61}] run kill @e[tag=entities_cryomancer]

execute unless entity @a[scores={char=62}] run kill @e[tag=entities_thornfiend]

execute unless entity @a[scores={char=63}] run kill @e[tag=entities_druid]
execute unless entity @a[scores={char=63}] run tag @a remove druid_root
execute unless entity @a[scores={char=63}] run scoreboard players set @a[scores={handofthorns=1..}] handofthorns 0

execute unless entity @a[scores={char=64}] run kill @e[tag=entities_scarletlady]
execute unless entity @a[scores={char=64}] run scoreboard players set @a[scores={laceration=1..}] laceration 0
execute unless entity @a[scores={char=64}] run scoreboard players set @a[scores={kneel=1..}] kneel 0
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_kiss
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_bite
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_kneel

execute unless entity @a[scores={char=65}] run kill @e[tag=entities_ghoul]
execute unless entity @a[scores={char=65}] run tag @a remove ghoul_bite
execute unless entity @a[scores={char=65}] run tag @a remove ghoul_ambushed_1
execute unless entity @a[scores={char=65}] run tag @a remove ghoul_ambushed_2

execute unless entity @a[scores={char=66}] run kill @e[tag=entities_lich]
execute unless entity @a[scores={char=66}] run tag @a remove impale_mark
execute unless entity @a[scores={char=66}] run tag @a remove lich_impaled
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_scrap_damage=1..}] lich_scrap_damage 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_scrap_damage2=1..}] lich_scrap_damage2 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_rebar_decay=1..}] lich_rebar_decay 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_rebar_count=1..}] lich_rebar_count 0

execute unless entity @a[scores={char=67}] run kill @e[tag=entities_revenant]

execute unless entity @a[scores={char=68}] run kill @e[tag=entities_enforcer]

execute unless entity @a[scores={char=69}] run kill @e[tag=entities_painter]

execute unless entity @a[scores={char=70}] run kill @e[tag=entities_bard]
execute unless entity @a[scores={char=70}] run tag @a remove bard_s1_perfect
execute unless entity @a[scores={char=70}] run tag @a remove bard_s2_perfect
execute unless entity @a[scores={char=70}] run tag @a remove bard_fear

execute unless entity @a[scores={char=71}] run kill @e[tag=entities_alternate]

execute unless entity @a[scores={char=72}] run kill @e[tag=entities_caretaker]



