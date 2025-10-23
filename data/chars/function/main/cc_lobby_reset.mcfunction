
#characters related

scoreboard players set @a[distance=..10] passive_tree_1 0
scoreboard players set @a[distance=..10] para_heal 0
scoreboard players set @a[distance=..10] passive_pris 0
scoreboard players set @a[distance=..10] surrender 0
scoreboard players set @a[distance=..10] sorrow 0
scoreboard players set @a[distance=..10] spell_shot_3 0
scoreboard players set @a[distance=..10] basilisk_petrify 0
scoreboard players set @a[distance=..10] basilisk_venom 0
scoreboard players set @a[distance=..10] passive_basi 0
scoreboard players set @a[distance=..10] passive_skel 0
scoreboard players set @a[distance=..10] livesteal_cd 0
scoreboard players set @a[distance=..10] petrify_hit 0
scoreboard players set @a[distance=..10] spell_luna_3 0
scoreboard players set @a[distance=..10] spell_demo_3 0
scoreboard players set @a[distance=..10] beating 0
scoreboard players set @a[distance=..10] passive_weav 0
scoreboard players set @a[distance=..10] panic_bite_cd 0
scoreboard players set @a[distance=..10] spell_shot_3 0
scoreboard players set @a[distance=..10] chilledroot_visual 0
scoreboard players set @a[distance=..10] drownedroot_visual 0
scoreboard players set @a[distance=..10] icyaura 0
scoreboard players set @a[distance=..10] tunneling 0
scoreboard players set @a[distance=..10] embrace 0
scoreboard players set @a[distance=..10] bludgeon 0
scoreboard players set @a[distance=..10] passive_drea 0
scoreboard players set @a[distance=..10] dreadnought_empower 0
scoreboard players set @a[distance=..10] scatter 0
scoreboard players set @a[distance=..10] holding_debris 0
scoreboard players set @a[distance=..10] void 0
scoreboard players set @a[distance=..10] abyss 0
scoreboard players set @a[distance=..10] lunatic_delay 0
scoreboard players set @a[distance=..10] passive_drow 0
scoreboard players set @a[distance=..10] spell_shap_2_1 0
scoreboard players set @a[distance=..10] spell_basi_2_1 0
scoreboard players set @a[distance=..10] passive_shap 0
scoreboard players set @a[distance=..10] passive_witc 0
scoreboard players set @a[distance=..10] passive_bend 0
scoreboard players set @a[distance=..10] sandgrasp 0
scoreboard players set @a[distance=..10] aber_s1_debuff 0
scoreboard players set @a[distance=..10] aber_s2_buff 0
scoreboard players set @a[distance=..10] siren_blood_splash_damage 0
scoreboard players set @a[distance=..10] friged_boost 0
scoreboard players set @a[distance=..10] shadowdash_damage 0
scoreboard players set @a[distance=..10] shadowdash_damage_2 0
scoreboard players set @a[distance=..10] shard_petrify 0



#spellcd
scoreboard players set @a[distance=..10] spellCD0 0
scoreboard players set @a[distance=..10] spellCD1 0
scoreboard players set @a[distance=..10] spellCD2 0
scoreboard players set @a[distance=..10] spellCD3 0
clear @a[distance=..10] minecraft:barrier


#cc effects
scoreboard players set @a[distance=..10] CC_stun 0
scoreboard players set @a[distance=..10] CC_root 0
scoreboard players set @a[distance=..10] CC_banish 0
scoreboard players set @a[distance=..10] CC_disarm 0
scoreboard players set @a[distance=..10] CC_grounded 0
scoreboard players set @a[distance=..10] CC_petrify 0
scoreboard players set @a[distance=..10] CC_exhaust 0
scoreboard players set @a[distance=..10] CC_mindrot 0
scoreboard players set @a[distance=..10] CC_intangible 0
scoreboard players set @a[distance=..10] CC_defiled 0
scoreboard players set @a[distance=..10] CC_silence 0
scoreboard players set @a[distance=..10] CC_knockup 0
scoreboard players set @a[distance=..10] CC_stagger 0
scoreboard players set @a[distance=..10] CC_crippled 0
scoreboard players set @a[distance=..10] CC_crystalize 0
scoreboard players set @a[distance=..10] CC_taunt 0
scoreboard players set @a[distance=..10] CC_flag 0
scoreboard players set @a[distance=..10] CC_confusion 0
scoreboard players set @a[distance=..10] CC_madness 0
scoreboard players set @a[distance=..10] confusion_randomiser 0
scoreboard players set @a[distance=..10] CC_knockdown 0
scoreboard players set @a[distance=..10] twisted_garden 0


#tags
tag @a[distance=..10] remove invisible
tag @a[distance=..10] remove barrier
tag @a[distance=..10] remove prowlermark
tag @a[distance=..10] remove in_the_void
tag @a[distance=..10] remove remember_me
tag @a[distance=..10] remove outlaw
tag @a[distance=..10] remove taunt_source_miner
tag @a[distance=..10] remove taunt_source_jester
tag @a[distance=..10] remove spin_left
tag @a[distance=..10] remove spin_right
tag @a[distance=..10] remove actual_team_purple
tag @a[distance=..10] remove actual_team_yellow
tag @a[distance=..10] remove form_stitched
tag @a[distance=..10] remove form_siren


tag @a[distance=..10] remove pharaoh
tag @a[distance=..10] remove tongue
tag @a[distance=..10] remove dweller
tag @a[distance=..10] remove faceless

#effects
effect give @a[distance=..10] minecraft:weakness 3 100 true

#team
team leave @a[distance=..10]

#snap back to reality
#execute if entity @a[distance=..10] run tp @a[x=173,y=5,z=19,distance=..20] 174 12 -81