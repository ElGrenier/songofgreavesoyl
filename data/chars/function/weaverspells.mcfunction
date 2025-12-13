kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cobweb"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spider_eye"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_hoe"}}]


#passive

title @a[scores={char=20,panic_bite_cd=0}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:" Panic Bite is ready ",color:"blue",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]

title @a[scores={char=20,panic_bite_cd=1..60}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"",color:"blue",type:"text"},{text:"==========",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=61..120}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"=",color:"blue",type:"text"},{text:"=========",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=121..180}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"==",color:"blue",type:"text"},{text:"========",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=181..240}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"===",color:"blue",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=241..300}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"====",color:"blue",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=301..360}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"=====",color:"blue",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=361..420}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"======",color:"blue",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=421..480}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"=======",color:"blue",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=481..540}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"========",color:"blue",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]
title @a[scores={char=20,panic_bite_cd=541..600}] actionbar [{text:"[",bold:1b,color:"dark_blue",type:"text"},{text:"=========",color:"blue",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_blue",type:"text"}]

scoreboard players add @a[scores={char=20,panic_bite_cd=3..,universal_hit=20..}] panic_bite_cd 60
scoreboard players add @a[scores={panic_bite_cd=1..,char=20}] panic_bite_cd 1
scoreboard players set @a[scores={panic_bite_cd=600..,char=20}] passive_weav 0
scoreboard players set @a[scores={panic_bite_cd=600..,char=20}] panic_bite_cd 0

execute at @a[scores={char=20,panic_bite_cd=0}] as @a[advancements={chars:weaver_hit=true},tag=valid_spell_target] unless score @s Team = @p[scores={char=20}] Team run tag @s add panic_bitten

effect give @a[tag=panic_bitten] wither 3 5
scoreboard players set @a[tag=panic_bitten] CC_broken 80
execute at @a[tag=panic_bitten] run scoreboard players set @a[scores={char=20}] panic_bite_cd 1

tag @a remove panic_bitten
advancement revoke @a[advancements={chars:weaver_hit=true}] only chars:weaver_hit


#weaver snare

scoreboard players set @a[scores={char=20,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=20,s1_timer=1,CC_silence=1..}] s1_timer 200

execute at @a[scores={char=20,s1_timer=1,CC_silence=0}] run playsound entity.spider.death master @a[distance=..10] ~ ~ ~ 1.0 1.8 1.0
execute at @a[scores={char=20,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["web","projectile","entities_weaver"]}
scoreboard players operation @e[tag=projectile,tag=web] Team = @p[scores={char=20}] Team
tp @e[tag=web,limit=1] @a[scores={char=20,s1_timer=1},limit=1]
execute at @a[scores={char=20,s1_timer=1,CC_silence=0}] as @e[tag=web,limit=1] at @s run tp @s ~ ~1.1 ~ 

execute as @e[tag=web] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=web] at @s run tp @s ^ ^ ^1
execute at @e[tag=web] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.001 10 normal
execute at @e[tag=web] run particle item_cobweb ~ ~ ~ 0.1 0.1 0.1 0.001 10 normal

execute at @e[tag=web] positioned ~-0.75 ~-0.75 ~-0.75 as @p[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=20}] Team align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["snare_webs","entities_weaver"]}

execute at @a[scores={char=20,s1_timer=30}] run kill @e[tag=web]

scoreboard players add @e[tag=snare_webs] entagle 1
execute at @e[tag=snare_webs] run kill @e[tag=web]
execute at @e[tag=snare_webs,scores={entagle=1..5}] run fill ~1 ~ ~1 ~-1 ~ ~-1 cobweb replace #minecraft:dash
execute at @e[tag=snare_webs,scores={entagle=1..5}] as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=20}] Team run tp @s ~ ~ ~
execute at @e[tag=snare_webs,scores={entagle=2}] run playsound block.cobweb.place master @a[distance=..8] ~ ~ ~ 1 0.5 1
execute at @e[tag=snare_webs,scores={entagle=1..}] run particle item_cobweb ~ ~0.3 ~ 0.8 0.5 0.8 0.1 5
execute at @e[tag=snare_webs,scores={entagle=59..61}] run particle item_cobweb ~ ~0.3 ~ 1 0.5 1 0.1 60
execute at @e[tag=snare_webs,scores={entagle=60..}] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace cobweb
execute at @e[tag=snare_webs,scores={entagle=60}] run playsound block.cobweb.break master @a[distance=..8] ~ ~ ~ 1 1.2 1
execute at @e[tag=snare_webs,scores={entagle=61..62}] run function battlegrounds:lightrestore
kill @e[tag=snare_webs,scores={entagle=65..}]



#kiss of death

scoreboard players set @a[scores={char=20,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=20,s2_timer=1,CC_silence=1..}] s2_timer 160

execute at @a[scores={char=20,s2_timer=1,CC_silence=0}] run playsound entity.spider.ambient master @a[distance=..10] ~ ~ ~ 1.0 2.0 1.0
execute at @a[scores={char=20,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["venomsplit","projectile","entities_weaver"],NoGravity:1b}
scoreboard players operation @e[tag=projectile,tag=venomsplit] Team = @p[scores={char=20}] Team
tp @e[tag=venomsplit,limit=1] @a[scores={char=20,s2_timer=1},limit=1]
execute at @a[scores={char=20,s2_timer=1,CC_silence=0}] as @e[tag=venomsplit,limit=1] at @s run tp @s ~ ~1.4 ~ 
execute as @e[tag=venomsplit] at @s run tp @s ^ ^ ^0.35
execute at @a[scores={char=20,s2_timer=15}] run kill @e[tag=venomsplit]

execute at @e[tag=venomsplit] positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=20}] Team run tag @s add weaver_venom
execute at @e[tag=venomsplit] positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=20}] Team run effect give @s poison 1 1
execute if entity @a[tag=weaver_venom] run kill @e[tag=venomsplit]


execute at @a[scores={char=20,s2_timer=1..5}] at @e[tag=venomsplit] run particle composter ~ ~ ~ 0.1 0.3 0.1 0.01 3 force
execute at @a[scores={char=20,s2_timer=5..10}] at @e[tag=venomsplit] run particle composter ~ ~ ~ 0.4 0.3 0.4 0.01 7 force
execute at @a[scores={char=20,s2_timer=10..15}] at @e[tag=venomsplit] run particle composter ~ ~ ~ 0.7 0.3 0.7 0.01 10 force

execute as @a[tag=weaver_venom,scores={HP=4..7}] run damage @s 1 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=8..11}] run damage @s 2 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=12..15}] run damage @s 3 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=16..19}] run damage @s 4 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=20..23}] run damage @s 5 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=24..27}] run damage @s 6 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=28..31}] run damage @s 7 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=32..35}] run damage @s 8 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=36..39}] run damage @s 9 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=weaver_venom,scores={HP=40..}] run damage @s 10 generic by @p[scores={char=20}] from @p[scores={char=20}]

tag @a remove weaver_venom

# weaver

scoreboard players set @a[scores={char=20}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=20}] spellCD1 220
scoreboard players add @a[scores={s1_timer=1..,char=20}] s1_timer 1
scoreboard players set @a[scores={s1_timer=221..,char=20}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=20}] spellCD2 180
scoreboard players add @a[scores={s2_timer=1..,char=20}] s2_timer 1
scoreboard players set @a[scores={s2_timer=181..,char=20}] s2_timer 0


execute as @a[scores={char=20}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] run clear @a[scores={char=20}] golden_hoe
item replace entity @a[scores={char=20}] hotbar.0 with minecraft:golden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Fang"},custom_data={weaver:1},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=20,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=20}] carrot_on_a_stick
item replace entity @a[scores={char=20,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:cobweb",minecraft:custom_name={text:"Weaver's Snare",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:binding_curse":1}] 1

execute as @a[scores={char=20,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=20}] warped_fungus_on_a_stick
execute unless entity @e[tag=1984] run item replace entity @a[scores={char=20,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:spider_eye",minecraft:custom_name={text:"Kiss of Death",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[scores={char=20,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:spider_eye",minecraft:custom_name={text:"Venom Spit",color:"dark_aqua",bold:1b}] 1
