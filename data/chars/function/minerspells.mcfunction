#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_block"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lantern"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]


#passive

#it's the item on his head

#skullsplitter

scoreboard players set @a[scores={char=40,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=40,s1_timer=1,CC_silence=1..}] s1_timer 120

execute at @a[scores={char=40,s1_timer=1,CC_silence=0}] run playsound minecraft:entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=40,s1_timer=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["skullsplit","entities_miner"],NoGravity:0b}
tp @e[tag=skullsplit,limit=1] @p[scores={char=40,s1_timer=2}]

execute at @e[tag=skullsplit] run particle minecraft:sweep_attack ~ ~1.4 ~ 1 0.1 1 0.0001 4 normal
#execute at @e[tag=skullsplit] run particle sweep_attack ^ ^1.4 ^-1 0.05 0.1 0.05 0.001 5 normal
execute as @e[tag=skullsplit] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=40,s1_timer=8..}] run kill @e[tag=skullsplit]


execute at @e[tag=skullsplit] as @e[distance=..2,tag=valid_spell_target,scores={CC_shieldbreak=0}] at @s unless score @s Team = @p[scores={char=40}] Team run playsound minecraft:item.shield.break master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @e[tag=skullsplit] as @e[distance=..2,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=40}] Team run scoreboard players set @s CC_shieldbreak 20
execute at @e[tag=skullsplit] as @e[distance=..2,tag=valid_spell_target] run damage @s 5 generic by @p[scores={char=40}] from @p[scores={char=40}]
execute at @e[tag=skullsplit] as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=40}] Team if entity @s[distance=..2] run kill @e[tag=skullsplit]
#execute at @e[tag=skullsplit] if entity @a[scores={char=40},team=purple] at @p[distance=..2,scores={CC_shieldbreak=0},team=yellow] run playsound minecraft:item.shield.break master @a[distance=..15] ~ ~ ~ 1 0.7 1
#execute at @e[tag=skullsplit] if entity @a[scores={char=40},team=purple] run scoreboard players set @p[distance=..2,team=yellow] CC_shieldbreak 20
#execute at @e[tag=skullsplit] if entity @a[scores={char=40},team=purple] run damage @p[distance=..2,team=yellow] 5 generic by @p[scores={char=40}] from @p[scores={char=40}]
#execute at @e[tag=skullsplit] if entity @a[scores={char=40},team=purple] if entity @p[distance=..2,team=yellow] run kill @e[tag=skullsplit]


#item replace entity @a[scores={char=40,miner_empower=1..}] hotbar.0 with iron_pickaxe[custom_name='{"bold":true,"color":"gray","text":"Pick"}',unbreakable={},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
#scoreboard players set @a[scores={miner_empower=1..}] miner_empower 0



#bugbait/taunt

scoreboard players set @a[scores={char=40,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=40,s2_timer=1,CC_silence=1..}] s2_timer 280

execute at @a[scores={char=40,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.pillager.hurt master @a[distance=..10] ~ ~ ~ 1 0.8 1
effect give @a[scores={char=40,s2_timer=3,CC_silence=0}] minecraft:resistance 4 2

execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] as @e[tag=valid_spell_target,distance=..5] unless score @s Team = @p[scores={char=40}] Team run tag @s add taunt_source_miner
execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] as @e[tag=taunt_source_miner] run scoreboard players set @s CC_taunt 80
execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] at @e[tag=taunt_source_miner] run particle minecraft:angry_villager ~ ~1.2 ~ 0.4 0.4 0.4 1 10

#execute at @a[scores={char=40,s2_timer=2,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..5,team=purple] CC_taunt 80
#execute at @a[scores={char=40,s2_timer=2,CC_silence=0},team=yellow] run tag @a[distance=..5,team=purple] add taunt_source_miner
#execute at @a[scores={char=40,s2_timer=2,CC_silence=0},team=yellow] at @a[distance=..5,team=purple] run particle minecraft:angry_villager ~ ~1.2 ~ 0.4 0.4 0.4 1 10


execute as @a[tag=taunt_source_miner,scores={CC_taunt=2..}] at @s run rotate @s facing entity @p[scores={char=40}]
execute as @a[tag=taunt_source_miner,scores={CC_taunt=2..}] at @s unless entity @a[distance=..6,scores={char=40}] run scoreboard players set @s CC_taunt 2
tag @a[scores={CC_taunt=..1}] remove taunt_source_miner



# miner

# scoreboard players add @a[scores={s1_timer=1..}] s1_timer 1
# item replace entity @a[scores={char=40,s1_timer=160..}] hotbar.1 with minecraft:iron_block[minecraft:custom_name={text:"Skullsplitter",color:"dark_aqua",bold:1b},minecraft:enchantment_glint_override=1b] 1
# scoreboard players set @a[scores={s1_timer=161..}] s1_timer 0
# scoreboard players set @a[scores={s1_timer=161..}] s1_timer 0
# scoreboard players set @a[scores={s1_timer=1}] spellCD1 160

# scoreboard players add @a[scores={s2_timer=1..}] s2_timer 1
# item replace entity @a[scores={char=40,s2_timer=400..}] hotbar.2 with minecraft:lantern[minecraft:custom_name={text:"Bugbait",color:"dark_aqua",bold:1b},minecraft:enchantment_glint_override=1b] 1
# scoreboard players set @a[scores={s2_timer=401..}] s2_timer 0
# scoreboard players set @a[scores={s2_timer=401..}] s2_timer 0
# scoreboard players set @a[scores={s2_timer=1}] spellCD2 400

execute as @a[scores={char=40}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:0b}]}] run clear @a[scores={char=40}] minecraft:iron_pickaxe
item replace entity @a[scores={char=40}] hotbar.0 with minecraft:iron_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Pick"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1



execute as @a[scores={char=40,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=40}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=40,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_block",minecraft:custom_name={text:"Skullsplitter",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=40,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=40}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=40,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:lantern",minecraft:custom_name={text:"Bugbait",color:"dark_aqua",bold:1b}] 1