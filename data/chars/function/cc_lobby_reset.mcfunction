
#characters related

scoreboard players set @s passive_tree_1 0
scoreboard players set @s para_heal 0
scoreboard players set @s passive_pris 0
scoreboard players set @s surrender 0
scoreboard players set @s sorrow 0
scoreboard players set @s spell_shot_3 0
scoreboard players set @s basilisk_petrify 0
scoreboard players set @s basilisk_venom 0
scoreboard players set @s passive_basi 0
scoreboard players set @s passive_skel 0
scoreboard players set @s livesteal_cd 0
scoreboard players set @s petrify_hit 0
scoreboard players set @s spell_luna_3 0
scoreboard players set @s spell_demo_3 0
scoreboard players set @s beating 0
scoreboard players set @s passive_weav 0
scoreboard players set @s panic_bite_cd 0
scoreboard players set @s spell_shot_3 0
scoreboard players set @s chilledroot_visual 0
scoreboard players set @s drownedroot_visual 0
scoreboard players set @s icyaura 0
scoreboard players set @s tunneling 0
scoreboard players set @s embrace 0
scoreboard players set @s bludgeon 0
scoreboard players set @s passive_drea 0
scoreboard players set @s dreadnought_empower 0
scoreboard players set @s scatter 0
scoreboard players set @s holding_debris 0
scoreboard players set @s void 0
scoreboard players set @s abyss 0
scoreboard players set @s lunatic_delay 0
scoreboard players set @s passive_drow 0
scoreboard players set @s spell_shap_2_1 0
scoreboard players set @s spell_basi_2_1 0
scoreboard players set @s passive_shap 0
scoreboard players set @s passive_witc 0
scoreboard players set @s passive_bend 0
scoreboard players set @s sandgrasp 0
scoreboard players set @s aber_s1_debuff 0
scoreboard players set @s aber_s2_buff 0
scoreboard players set @s siren_blood_splash_damage 0
scoreboard players set @s friged_boost 0
scoreboard players set @s shadowdash_damage 0
scoreboard players set @s shadowdash_damage_2 0
scoreboard players set @s shard_petrify 0



#spellcd
scoreboard players set @s spellCD0 0
scoreboard players set @s spellCD1 0
scoreboard players set @s spellCD2 0
scoreboard players set @s spellCD3 0
clear @s minecraft:barrier


#cc effects
scoreboard players set @s CC_stun 0
scoreboard players set @s CC_root 0
scoreboard players set @s CC_banish 0
scoreboard players set @s CC_disarm 0
scoreboard players set @s CC_grounded 0
scoreboard players set @s CC_petrify 0
scoreboard players set @s CC_exhaust 0
scoreboard players set @s CC_mindrot 0
scoreboard players set @s CC_intangible 0
scoreboard players set @s CC_defiled 0
scoreboard players set @s CC_silence 0
scoreboard players set @s CC_knockup 0
scoreboard players set @s CC_stagger 0
scoreboard players set @s CC_crippled 0
scoreboard players set @s CC_crystalize 0
scoreboard players set @s CC_taunt 0
scoreboard players set @s CC_flag 0
scoreboard players set @s CC_confusion 0
scoreboard players set @s CC_madness 0
scoreboard players set @s confusion_randomiser 0
scoreboard players set @s CC_knockdown 0
scoreboard players set @s twisted_garden 0


#tags
tag @s remove invisible
tag @s remove barrier
tag @s remove prowlermark
tag @s remove in_the_void
tag @s remove remember_me
tag @s remove outlaw
tag @s remove taunt_source_miner
tag @s remove taunt_source_jester
tag @s remove spin_left
tag @s remove spin_right
tag @s remove actual_team_purple
tag @s remove actual_team_yellow
tag @s remove form_stitched
tag @s remove form_siren


tag @s remove pharaoh
tag @s remove tongue
tag @s remove dweller
tag @s remove faceless

#effects
effect give @s minecraft:weakness 3 100 true

#team
team leave @s

#snap back to reality
#execute if entity @s run tp @a[x=173,y=5,z=19,distance=..20] 174 12 -81