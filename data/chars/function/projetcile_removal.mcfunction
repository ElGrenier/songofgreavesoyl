
execute unless entity @a[scores={char=1}] run kill @e[tag=entities_slayer]

execute unless entity @a[scores={char=2}] run kill @e[tag=entities_huntress]

execute unless entity @a[scores={char=3}] at @e[tag=wallremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace ice
execute unless entity @a[scores={char=3}] run kill @e[tag=entities_frozenpaladin]
execute unless entity @a[scores={char=3}] run scoreboard players set @a[scores={icyaura=1..}] icyaura 0
execute unless entity @a[scores={char=3}] run scoreboard players set @a[scores={chillrend_root_vis=1..}] chillrend_root_vis 0

execute unless entity @a[scores={char=4}] run kill @e[tag=WarperMarker]

execute unless entity @a[scores={char=5}] at @e[tag=incinerate] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace fire
execute unless entity @a[scores={char=5}] at @e[tag=fireremove] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 air replace fire
execute unless entity @a[scores={char=5}] run kill @e[tag=entities_cremator]

execute unless entity @a[scores={char=6}] run kill @e[tag=entities_guide]

execute unless entity @a[scores={char=7}] run kill @e[tag=dragondash]

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

execute unless entity @a[scores={char=15}] run kill @e[tag=entities_shard]
execute unless entity @a[scores={char=15}] run scoreboard players set @a[scores={shard_petrify=1..}] shard_petrify 0
execute unless entity @a[scores={char=15}] at @e[tag=containment_cube] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 air replace magenta_stained_glass

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

execute unless entity @a[scores={char=26}] run kill @e[tag=walldash]
execute unless entity @a[scores={char=26}] run kill @e[tag=toxicity]
execute unless entity @a[scores={char=26}] run kill @e[tag=toxicblindness]
execute unless entity @a[scores={char=26}] run kill @e[tag=eyes]
execute unless entity @a[scores={char=26}] run kill @e[tag=eyes_wings]
execute unless entity @a[scores={char=26}] run kill @e[tag=eyes_blindness]

execute unless entity @a[scores={char=27}] run kill @e[tag=blessingofflames_visuals]

execute unless entity @a[scores={char=28}] run kill @e[tag=electrocute]
execute unless entity @a[scores={char=28}] run kill @e[tag=knowledge]
execute unless entity @a[scores={char=28}] run kill @e[tag=knowledgeshoot]
execute unless entity @a[scores={char=28}] run kill @e[tag=braindamage]

execute unless entity @a[scores={char=29}] run kill @e[tag=shroom]
execute unless entity @a[scores={char=29}] run kill @e[tag=infectedground]
execute unless entity @a[scores={char=29}] run kill @e[tag=spores]

execute unless entity @a[scores={char=30}] run kill @e[tag=turret]
execute unless entity @a[scores={char=30}] run kill @e[tag=tracker]
execute unless entity @a[scores={char=30}] run kill @e[tag=turretshoot]
execute unless entity @a[scores={char=30}] run kill @e[tag=canister]
execute unless entity @a[scores={char=30}] run kill @e[tag=toxicdisorder]

execute unless entity @a[scores={char=31}] run scoreboard players set @a[scores={keelhauling=1..}] keelhauling 0
execute unless entity @a[scores={char=31}] run kill @e[tag=entities_drownedcaptain]

execute unless entity @a[scores={char=32}] run kill @e[tag=entities_emperor]

execute unless entity @a[scores={char=33}] run kill @e[tag=entities_stray]
execute unless entity @a[scores={char=33}] run scoreboard players set @a[scores={stray_terrorradius=1..}] stray_terrorradius 0

execute unless entity @a[scores={char=34}] run kill @e[tag=puddle]
execute unless entity @a[scores={char=34}] run kill @e[tag=raincloud]
execute as @e[tag=cloud] at @s unless entity @a[scores={char=34}] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:light_gray_stained_glass
execute unless entity @a[scores={char=34}] run kill @e[tag=cloud]

execute unless entity @a[scores={char=35}] run kill @e[tag=healdash]
execute unless entity @a[scores={char=35}] run kill @e[tag=silencedash]

execute unless entity @a[scores={char=36}] run kill @e[tag=display_decay]
execute unless entity @a[scores={char=36}] run kill @e[tag=fissure]
execute unless entity @a[scores={char=36}] run kill @e[tag=fissure_return]
execute unless entity @a[scores={char=36}] run kill @e[tag=eye_particles]
execute unless entity @a[scores={char=36}] run kill @e[tag=erupt]
execute unless entity @a[scores={char=36}] run kill @e[tag=eruption_visuals]

execute unless entity @a[scores={char=37}] run kill @e[tag=void_blade]
execute unless entity @a[scores={char=37}] run kill @e[tag=void_blade_return]
execute unless entity @a[scores={char=37}] run kill @e[tag=void_banish]
execute unless entity @a[scores={char=37}] run kill @e[tag=void_gate]
execute unless entity @a[scores={char=37}] run kill @e[tag=void_gate_return]
execute unless entity @a[scores={char=37}] run scoreboard players set @a[scores={void=1..}] void 0
execute unless entity @a[scores={char=37}] run tp @a[scores={void=1..}] @e[tag=voidmarker,limit=1]
execute unless entity @a[scores={char=37}] run kill @e[tag=voidmarker]
execute unless entity @a[scores={char=37}] run tag @a remove remember_me

execute unless entity @a[scores={char=38}] run kill @e[tag=chains_mark]
execute unless entity @a[scores={char=38}] run kill @e[tag=display_outlaw]
execute unless entity @a[scores={char=38}] run kill @e[tag=rite_pull]
execute unless entity @a[scores={char=38}] run kill @e[tag=chain_links]
execute unless entity @a[scores={char=38}] run tag @a remove outlaw

execute unless entity @a[scores={char=39}] run kill @e[tag=petrify_visuals]
execute unless entity @a[scores={char=39}] run kill @e[tag=burrowstrike_thing]
execute unless entity @a[scores={char=39}] as @a[scores={basilisk_petrify=1..}] run attribute @s minecraft:knockback_resistance base set 0
execute unless entity @a[scores={char=39}] run scoreboard players set @a[scores={basilisk_petrify=1..}] basilisk_petrify 0
execute unless entity @a[scores={char=39}] run scoreboard players set @a[scores={basilisk_venom=1..}] basilisk_venom 0

execute unless entity @a[scores={char=40}] run kill @e[tag=skullsplit]
execute unless entity @a[scores={char=40}] run tag @a remove taunt_source_miner

execute unless entity @a[scores={char=41}] run kill @e[tag=swarmer_egg]
execute unless entity @a[scores={char=41}] run kill @e[tag=scoutcrawler]
execute unless entity @a[scores={char=41}] run kill @e[tag=swarmerboi]

execute unless entity @a[scores={char=42}] run kill @e[tag=frigeddash]
execute unless entity @a[scores={char=42}] run scoreboard players set @a[scores={frostbite=1..}] frostbite 0

execute unless entity @a[scores={char=43}] run kill @e[tag=breathofrime]
execute unless entity @a[scores={char=43}] run kill @e[tag=skryal_tunnel]
execute unless entity @a[scores={char=43}] run kill @e[tag=skryal_tunnel_visuals]

execute unless entity @a[scores={char=44}] run kill @e[tag=raider_hook]
execute unless entity @a[scores={char=44}] run kill @e[tag=grapple_point]
execute unless entity @a[scores={char=44}] run kill @e[tag=grapple_hook_visual]
execute unless entity @a[scores={char=44}] run kill @e[tag=bola]
execute unless entity @a[scores={char=44}] run kill @e[tag=bola2]

execute unless entity @a[scores={char=45}] run kill @e[tag=fate_snare]
execute unless entity @a[scores={char=45}] run kill @e[tag=snare_visuals]
execute unless entity @a[scores={char=45}] run kill @e[tag=snare_explosion_visuals]
execute unless entity @a[scores={char=45}] run kill @e[tag=orrery]
execute unless entity @a[scores={char=45}] run kill @e[tag=orrery_pull]
execute unless entity @a[scores={char=45}] run kill @e[tag=orrery_visuals]
execute unless entity @a[scores={char=45}] run scoreboard players set @a[scores={fate_snared=1..}] fate_snared 0


execute unless entity @a[scores={char=46}] run kill @e[tag=dreadnought_cleave]
execute unless entity @a[scores={char=46}] run kill @e[tag=bludgeon_visual]
execute unless entity @a[scores={char=46}] run kill @e[tag=bludgeon_actual]
execute unless entity @a[scores={char=46}] run scoreboard players set @a[scores={bludgeon=1..}] bludgeon 0


execute unless entity @a[scores={char=47}] run kill @e[tag=winds_visuals]
execute unless entity @a[scores={char=47}] run kill @e[tag=mummy_pull]
execute unless entity @a[scores={char=47}] run scoreboard players set @a[scores={embrace=1..}] embrace 0


execute unless entity @a[scores={char=48}] run kill @e[tag=debris]
execute unless entity @a[scores={char=48}] run kill @e[tag=debris_held]
execute unless entity @a[scores={char=48}] run kill @e[tag=g_well]
execute unless entity @a[scores={char=48}] run kill @e[tag=g_scatter]
execute unless entity @a[scores={char=48}] run kill @e[tag=v_scatter]
execute unless entity @a[scores={char=48}] run kill @e[tag=debris_projectile]
execute unless entity @a[scores={char=48}] run kill @e[tag=scatter_marker]
execute unless entity @a[scores={char=48}] run kill @e[tag=scatter_face_slammed_to_a_wall]
execute unless entity @a[scores={char=48}] run scoreboard players set @a[scores={scatter=1..}] scatter 0
execute unless entity @a[scores={char=48}] run scoreboard players set @a[scores={holding_debris=1..}] holding_debris 0

execute unless entity @a[scores={char=49}] run scoreboard players set @a[scores={aber_s1_debuff=1..}] aber_s1_debuff 0
execute unless entity @a[scores={char=49}] run scoreboard players set @a[scores={aber_s2_buff=1..}] aber_s2_buff 0

execute as @e[tag=court_pillar] at @s unless entity @a[scores={char=50}] run fill ~4 ~-4 ~4 ~-4 ~4 ~-4 minecraft:air replace minecraft:reinforced_deepslate
execute unless entity @a[scores={char=50}] run kill @e[tag=court_pillar]

execute unless entity @a[scores={char=51}] run kill @e[tag=juggle_ball]
execute unless entity @a[scores={char=51}] run kill @e[tag=dazzle_ball]
execute unless entity @a[scores={char=51}] run kill @e[tag=dazzle_ball_bounce]
execute unless entity @a[scores={char=51}] run kill @e[tag=last_laugh]
execute unless entity @a[scores={char=51}] run kill @e[tag=shiv]
execute unless entity @a[scores={char=51}] run tag @a remove taunt_source_jester

execute unless entity @a[scores={char=52}] run kill @e[tag=sand_scorn]
execute unless entity @a[scores={char=52}] run kill @e[tag=sand_scorn_explosion]
execute unless entity @a[scores={char=52}] run kill @e[tag=sand_scorn_visuals]
execute unless entity @a[scores={char=52}] run kill @e[tag=last_sandstorm]
execute unless entity @a[scores={char=52}] run kill @e[tag=sandgrasp_grasp]
execute unless entity @a[scores={char=52}] run scoreboard players set @a[scores={sandgrasp=1..}] sandgrasp 0

execute unless entity @a[scores={char=53}] run kill @e[tag=abyssflow_visuals]
execute unless entity @a[scores={char=53}] run kill @e[tag=abyssblood_visuals]
execute unless entity @a[scores={char=53}] run kill @e[tag=siren_dashes]
execute unless entity @a[scores={char=53}] run kill @e[tag=blood_splash]

execute unless entity @a[scores={char=54}] run scoreboard players set @a[scores={shaman_damage=1..}] shaman_damage 0
execute unless entity @a[scores={char=54}] run scoreboard players set @a[scores={abysssigil=1..}] abysssigil 0
execute unless entity @a[scores={char=54}] run kill @e[tag=effigy]
execute unless entity @a[scores={char=54}] run kill @e[tag=sacrifice_visuals]

execute unless entity @a[scores={char=55}] run kill @e[tag=umbra]
execute unless entity @a[scores={char=55}] run kill @e[tag=glavie_umbra_visuals]
execute unless entity @a[scores={char=55}] run kill @e[tag=glavie_visuals]
execute unless entity @a[scores={char=55}] run kill @e[tag=gaiveslash_umbra_visual_core]
execute unless entity @a[scores={char=55}] run kill @e[tag=gaiveslash_visual_core]

execute unless entity @a[scores={char=56}] run kill @e[tag=asph_display]
execute unless entity @a[scores={char=56}] run kill @e[tag=smell_projectile]
execute unless entity @a[scores={char=56}] run kill @e[tag=ember]
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_decay_initial=1..}] asphyxiation_decay_initial 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_decay=1..}] asphyxiation_decay 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_timer=1..}] asphyxiation_timer 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation=1..}] asphyxiation 0
execute unless entity @a[scores={char=56}] run scoreboard players set @a[scores={asphyxiation_immunity=1..}] asphyxiation_immunity 0

execute unless entity @a[scores={char=57}] run kill @e[tag=stempede_collision]
execute unless entity @a[scores={char=57}] run kill @e[tag=grab_chain]
execute unless entity @a[scores={char=57}] run kill @e[tag=grab_chain_visual_core]
execute unless entity @a[scores={char=57}] run kill @e[tag=ch_shackle_visuals_1]
execute unless entity @a[scores={char=57}] run kill @e[tag=overpower_grab]
execute unless entity @a[scores={char=57}] run kill @e[tag=runaway_hold]
execute unless entity @a[scores={char=57}] run kill @e[tag=throw_collision]
execute unless entity @a[scores={char=57}] run tag @a remove runaway_hold
execute unless entity @a[scores={char=57}] run tag @a remove runaway_pull


execute unless entity @a[scores={char=58}] at @e[tag=expurgation_explosion] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:fire
execute unless entity @a[scores={char=58}] run kill @e[tag=fire_cleanse]
execute unless entity @a[scores={char=58}] run kill @e[tag=pyroclastic_can]
execute unless entity @a[scores={char=58}] run kill @e[tag=expurgation_gas]
execute unless entity @a[scores={char=58}] run kill @e[tag=expurgation_explosion]
execute unless entity @a[scores={char=58}] run tag @a remove purifier

execute unless entity @a[scores={char=59}] run kill @e[tag=MoldHost]
execute unless entity @a[scores={char=59}] run kill @e[tag=MoldStructure]
execute unless entity @a[scores={char=59}] run kill @e[tag=MoldProjectile]
execute unless entity @a[scores={char=59}] run kill @e[tag=mold_target_point]
execute unless entity @a[scores={char=59}] run tag @e remove the_mold


execute unless entity @a[scores={char=60}] run kill @e[tag=celestial_bodies]
execute unless entity @a[scores={char=60}] run kill @e[tag=celestial_visual_core]
execute unless entity @a[scores={char=60}] run kill @e[tag=celestial_bodies]
execute unless entity @a[scores={char=60}] run kill @e[tag=CelestialProjectile]
execute unless entity @a[scores={char=60}] run kill @e[tag=CelestialBoom]
execute unless entity @a[scores={char=60}] run kill @e[tag=meteor_point]
execute unless entity @a[scores={char=60}] run kill @e[tag=meteor]
execute unless entity @a[scores={char=60}] run kill @e[tag=meteor_visuals]
execute unless entity @a[scores={char=60}] run kill @e[tag=BlackHole]
execute unless entity @a[scores={char=60}] run kill @e[tag=BlacFuckingkHole]


execute unless entity @a[scores={char=61}] run kill @e[tag=cryostream]
execute unless entity @a[scores={char=61}] run kill @e[tag=cold_cone]
execute unless entity @a[scores={char=61}] run kill @e[tag=cooling_can]
execute unless entity @a[scores={char=61}] run kill @e[tag=hypotermia_gas]


execute unless entity @a[scores={char=62}] run kill @e[tag=rotten_grasp]
execute unless entity @a[scores={char=62}] run kill @e[tag=rotten_grasp_visuals]
execute unless entity @a[scores={char=62}] run kill @e[tag=rotten_grasp_grab]
execute unless entity @a[scores={char=62}] run kill @e[tag=thorns_visuals]

execute unless entity @a[scores={char=63}] run kill @e[tag=blightbloom_flower]
execute unless entity @a[scores={char=63}] run kill @e[tag=tanglebarbs_projectile]
execute unless entity @a[scores={char=63}] run kill @e[tag=tanglebarbs_actual]
execute unless entity @a[scores={char=63}] run kill @e[tag=handofthorns_visual]
execute unless entity @a[scores={char=63}] run tag @a remove druid_root
execute unless entity @a[scores={char=63}] run scoreboard players set @a[scores={handofthorns=1..}] handofthorns 0

execute unless entity @a[scores={char=64}] run kill @e[tag=laceration_knife]
execute unless entity @a[scores={char=64}] run kill @e[tag=mosquito_blood]
execute unless entity @a[scores={char=64}] run scoreboard players set @a[scores={laceration=1..}] laceration 0
execute unless entity @a[scores={char=64}] run scoreboard players set @a[scores={kneel=1..}] kneel 0
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_kiss
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_bite
execute unless entity @a[scores={char=64}] run tag @a remove mosquito_kneel

execute unless entity @a[scores={char=65}] run kill @e[tag=septicdash]
execute unless entity @a[scores={char=65}] run kill @e[tag=ghoul_ambushdash_1]
execute unless entity @a[scores={char=65}] run kill @e[tag=ghoul_ambushdash_2]
execute unless entity @a[scores={char=65}] run kill @e[tag=ghoul_ambush_cling]
execute unless entity @a[scores={char=65}] run tag @a remove ghoul_bite
execute unless entity @a[scores={char=65}] run tag @a remove ghoul_ambushed

execute unless entity @a[scores={char=66}] run kill @e[tag=harvest_visuals]
execute unless entity @a[scores={char=66}] run kill @e[tag=lich_impale_rebar]
execute unless entity @a[scores={char=66}] run tag @a remove impale_mark
execute unless entity @a[scores={char=66}] run tag @a remove lich_impaled
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_scrap_damage=1..}] lich_scrap_damage 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_scrap_damage2=1..}] lich_scrap_damage2 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_rebar_decay=1..}] lich_rebar_decay 0
execute unless entity @a[scores={char=66}] run scoreboard players set @a[scores={lich_rebar_count=1..}] lich_rebar_count 0

execute unless entity @a[scores={char=67}] run kill @e[tag=shield_bash_thing]

execute unless entity @a[scores={char=68}] run kill @e[tag=pulverize_shockwave]
execute unless entity @a[scores={char=68}] run kill @e[tag=pulverize_horizontal]
execute unless entity @a[scores={char=68}] run kill @e[tag=enforcer_push]

execute unless entity @a[scores={char=69}] run kill @e[tag=painter_stuff]



