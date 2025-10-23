
#unstoppable

effect clear @a[scores={unstoppable=1..}] minecraft:slowness
effect clear @a[scores={unstoppable=1..,char=..12}] minecraft:weakness
effect clear @a[scores={unstoppable=1..,char=14..}] minecraft:weakness
effect clear @a[scores={unstoppable=1..}] minecraft:jump_boost
#effect clear @a[scores={unstoppable=1..}] levitation

scoreboard players set @a[scores={unstoppable=1..}] CC_stun 0
scoreboard players set @a[scores={unstoppable=1..}] CC_root 0
scoreboard players set @a[scores={unstoppable=1..}] CC_grounded 0
scoreboard players set @a[scores={unstoppable=1..}] CC_disarm 0
scoreboard players set @a[scores={unstoppable=1..}] CC_knockup 0
scoreboard players set @a[scores={unstoppable=1..}] CC_stagger 0
scoreboard players set @a[scores={unstoppable=1..}] CC_taunt 0

scoreboard players remove @a[scores={unstoppable=1..}] unstoppable 1

execute at @a[scores={unstoppable=1..}] positioned ~ ~2.7 ~ unless entity @e[distance=..1,tag=display_unstoppable] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_unstoppable"],Marker:1b,Invisible:1b,CustomName:{text:"[",extra:[{text:"UNSTOPPABLE",color:"yellow",bold:1b},{text:"]",color:"gold",bold:1b}],color:"gold",bold:1b},CustomNameVisible:1b}
execute at @a[scores={unstoppable=1..}] positioned ~ ~2.7 ~ run tp @e[distance=..1,tag=display_unstoppable] ~ ~ ~
execute as @e[tag=display_unstoppable] at @s positioned ~ ~-2.7 ~ unless entity @a[distance=..1,scores={unstoppable=1..}] run kill @s

#effects removal ====================================================================================================================================================================================================================================

scoreboard players remove @a[scores={CC_stun=-10..}] CC_stun 1
scoreboard players remove @a[scores={CC_root=-10..}] CC_root 1
scoreboard players remove @a[scores={CC_grounded=-10..}] CC_grounded 1


scoreboard players remove @a[scores={CC_banish=1..}] CC_banish 1
scoreboard players remove @a[scores={CC_disarm=1..}] CC_disarm 1
scoreboard players remove @a[scores={CC_petrify=1..}] CC_petrify 1
scoreboard players remove @a[scores={CC_exhaust=1..}] CC_exhaust 1
scoreboard players remove @a[scores={CC_intangible=1..}] CC_intangible 1
scoreboard players remove @a[scores={CC_defiled=1..}] CC_defiled 1
scoreboard players remove @a[scores={CC_shieldbreak=1..}] CC_shieldbreak 1
scoreboard players remove @a[scores={CC_silence=1..}] CC_silence 1
scoreboard players remove @a[scores={CC_knockup=1..}] CC_knockup 1
scoreboard players remove @a[scores={CC_stagger=1..}] CC_stagger 1
scoreboard players remove @a[scores={CC_crystalize=1..}] CC_crystalize 1
scoreboard players remove @a[scores={CC_taunt=1..}] CC_taunt 1
scoreboard players remove @a[scores={CC_confusion=1..}] CC_confusion 1
scoreboard players remove @a[scores={CC_knockdown=1..}] CC_knockdown 1
scoreboard players remove @a[scores={CC_afterburn=1..}] CC_afterburn 1
scoreboard players remove @a[scores={CC_hypothermia=1..}] CC_hypothermia 1


scoreboard players remove @a[scores={CC_madness=1..}] CC_madness 1
scoreboard players remove @a[scores={CC_broken=1..}] CC_broken 1
scoreboard players remove @a[scores={CC_mindrot=1..}] CC_mindrot 1
scoreboard players remove @a[scores={CC_crippled=1..}] CC_crippled 1

scoreboard players remove @a[scores={CC_flag=1..}] CC_flag 1
scoreboard players remove @a[scores={CC_noflag=1..}] CC_noflag 1

# display ====================================================================================================================================================================================================================================


title @a[scores={CC_mindrot=1..}] times 0 5 0
title @a[scores={CC_mindrot=1..2}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=3..4}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=5..6}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=7..8}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=9..10}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=11..12}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=13..14}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=15..16}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=17..18}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=19..20}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={CC_mindrot=21..22}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=23..24}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=25..26}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=27..28}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=29..30}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=31..32}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=33..34}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=35..36}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=37..38}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=39..40}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={CC_mindrot=41..42}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=43..44}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=45..46}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=47..48}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=49..50}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=51..52}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=53..54}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=55..56}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=57..58}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=59..60}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={CC_mindrot=61..62}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=63..64}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=65..66}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=67..68}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=69..70}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=71..72}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=73..74}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=75..76}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=77..78}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=79..80}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={CC_mindrot=81..82}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=83..84}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=85..86}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=87..88}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=89..90}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=91..92}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=93..94}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=95..96}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=97..98}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=99..100}] title [{text:"5",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]
title @a[scores={CC_mindrot=1..}] subtitle {text:"MIND ROT",color:"aqua",bold:1b,type:"text"}



title @a[scores={CC_stun=1..}] times 0 5 0
title @a[scores={CC_stun=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stun=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stun=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stun=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stun=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stun=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stun=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stun=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stun=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stun=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stun=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stun=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stun=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stun=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stun=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stun=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stun=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stun=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stun=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stun=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stun=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stun=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stun=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stun=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stun=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stun=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stun=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stun=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stun=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stun=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stun=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stun=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stun=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stun=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stun=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stun=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stun=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stun=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stun=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stun=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stun=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stun=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stun=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stun=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stun=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stun=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stun=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stun=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stun=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stun=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_stun=1..}] subtitle {text:"STUNNED",color:"red",bold:1b,type:"text"}



title @a[scores={CC_root=1..}] times 0 5 0
title @a[scores={CC_root=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_root=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_root=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_root=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_root=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_root=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_root=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_root=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_root=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_root=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_root=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_root=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_root=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_root=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_root=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_root=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_root=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_root=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_root=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_root=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_root=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_root=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_root=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_root=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_root=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_root=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_root=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_root=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_root=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_root=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_root=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_root=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_root=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_root=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_root=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_root=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_root=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_root=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_root=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_root=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_root=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_root=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_root=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_root=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_root=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_root=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_root=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_root=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_root=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_root=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_root=1..}] subtitle {text:"ROOTED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_disarm=1..}] times 0 5 0
title @a[scores={CC_disarm=1..2,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_disarm=3..4,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_disarm=5..6,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_disarm=7..8,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_disarm=9..10,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_disarm=11..12,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_disarm=13..14,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_disarm=15..16,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_disarm=17..18,CC_stun=..0,CC_knockup=..0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_disarm=19..20,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_disarm=21..22,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_disarm=23..24,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_disarm=25..26,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_disarm=27..28,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_disarm=29..30,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_disarm=31..32,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_disarm=33..34,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_disarm=35..36,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_disarm=37..38,CC_stun=..0,CC_knockup=..0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_disarm=39..40,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_disarm=41..42,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_disarm=43..44,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_disarm=45..46,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_disarm=47..48,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_disarm=49..50,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_disarm=51..52,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_disarm=53..54,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_disarm=55..56,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_disarm=57..58,CC_stun=..0,CC_knockup=..0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_disarm=59..60,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_disarm=61..62,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_disarm=63..64,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_disarm=65..66,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_disarm=67..68,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_disarm=69..70,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_disarm=71..72,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_disarm=73..74,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_disarm=75..76,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_disarm=77..78,CC_stun=..0,CC_knockup=..0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_disarm=79..80,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_disarm=81..82,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_disarm=83..84,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_disarm=85..86,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_disarm=87..88,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_disarm=89..90,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_disarm=91..92,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_disarm=93..94,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_disarm=95..96,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_disarm=97..98,CC_stun=..0,CC_knockup=..0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_disarm=99..100,CC_stun=..0,CC_knockup=..0}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_disarm=1..,CC_stun=..0,CC_knockup=..0}] subtitle {text:"DISARMED",color:"red",bold:1b,type:"text"}




title @a[scores={CC_grounded=1..}] times 0 5 0
title @a[scores={CC_grounded=1..2,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_grounded=3..4,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_grounded=5..6,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_grounded=7..8,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_grounded=9..10,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_grounded=11..12,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_grounded=13..14,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_grounded=15..16,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_grounded=17..18,CC_knockdown=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_grounded=19..20,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_grounded=21..22,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_grounded=23..24,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_grounded=25..26,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_grounded=27..28,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_grounded=29..30,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_grounded=31..32,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_grounded=33..34,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_grounded=35..36,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_grounded=37..38,CC_knockdown=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_grounded=39..40,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_grounded=41..42,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_grounded=43..44,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_grounded=45..46,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_grounded=47..48,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_grounded=49..50,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_grounded=51..52,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_grounded=53..54,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_grounded=55..56,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_grounded=57..58,CC_knockdown=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_grounded=59..60,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_grounded=61..62,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_grounded=63..64,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_grounded=65..66,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_grounded=67..68,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_grounded=69..70,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_grounded=71..72,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_grounded=73..74,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_grounded=75..76,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_grounded=77..78,CC_knockdown=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_grounded=79..80,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_grounded=81..82,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_grounded=83..84,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_grounded=85..86,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_grounded=87..88,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_grounded=89..90,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_grounded=91..92,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_grounded=93..94,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_grounded=95..96,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_grounded=97..98,CC_knockdown=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_grounded=99..100,CC_knockdown=0}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_grounded=1..,CC_knockdown=0}] subtitle {text:"GROUNDED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_petrify=1..}] times 0 5 0
title @a[scores={CC_petrify=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_petrify=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_petrify=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_petrify=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_petrify=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_petrify=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_petrify=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_petrify=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_petrify=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_petrify=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_petrify=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_petrify=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_petrify=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_petrify=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_petrify=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_petrify=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_petrify=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_petrify=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_petrify=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_petrify=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_petrify=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_petrify=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_petrify=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_petrify=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_petrify=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_petrify=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_petrify=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_petrify=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_petrify=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_petrify=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_petrify=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_petrify=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_petrify=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_petrify=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_petrify=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_petrify=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_petrify=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_petrify=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_petrify=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_petrify=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_petrify=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_petrify=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_petrify=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_petrify=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_petrify=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_petrify=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_petrify=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_petrify=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_petrify=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_petrify=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_petrify=1..}] subtitle {text:"PETRIFIED",color:"red",bold:1b,type:"text"}

title @a[scores={CC_crystalize=1..}] times 0 5 1
title @a[scores={CC_crystalize=1..}] title {text:" ",type:"text"}
title @a[scores={CC_crystalize=1..}] subtitle {text:"CRYSTALIZED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_exhaust=1..}] times 0 5 0
title @a[scores={CC_exhaust=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_exhaust=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_exhaust=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_exhaust=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_exhaust=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_exhaust=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_exhaust=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_exhaust=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_exhaust=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_exhaust=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_exhaust=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_exhaust=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_exhaust=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_exhaust=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_exhaust=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_exhaust=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_exhaust=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_exhaust=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_exhaust=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_exhaust=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_exhaust=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_exhaust=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_exhaust=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_exhaust=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_exhaust=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_exhaust=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_exhaust=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_exhaust=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_exhaust=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_exhaust=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_exhaust=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_exhaust=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_exhaust=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_exhaust=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_exhaust=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_exhaust=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_exhaust=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_exhaust=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_exhaust=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_exhaust=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_exhaust=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_exhaust=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_exhaust=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_exhaust=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_exhaust=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_exhaust=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_exhaust=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_exhaust=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_exhaust=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_exhaust=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_exhaust=1..}] subtitle {text:"EXHAUSTED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_defiled=1..}] times 0 5 0
title @a[scores={CC_defiled=1..2,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_defiled=3..4,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_defiled=5..6,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_defiled=7..8,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_defiled=9..10,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_defiled=11..12,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_defiled=13..14,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_defiled=15..16,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_defiled=17..18,CC_crippled=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_defiled=19..20,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_defiled=21..22,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_defiled=23..24,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_defiled=25..26,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_defiled=27..28,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_defiled=29..30,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_defiled=31..32,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_defiled=33..34,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_defiled=35..36,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_defiled=37..38,CC_crippled=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_defiled=39..40,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_defiled=41..42,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_defiled=43..44,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_defiled=45..46,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_defiled=47..48,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_defiled=49..50,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_defiled=51..52,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_defiled=53..54,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_defiled=55..56,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_defiled=57..58,CC_crippled=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_defiled=59..60,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_defiled=61..62,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_defiled=63..64,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_defiled=65..66,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_defiled=67..68,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_defiled=69..70,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_defiled=71..72,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_defiled=73..74,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_defiled=75..76,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_defiled=77..78,CC_crippled=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_defiled=79..80,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_defiled=81..82,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_defiled=83..84,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_defiled=85..86,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_defiled=87..88,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_defiled=89..90,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_defiled=91..92,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_defiled=93..94,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_defiled=95..96,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_defiled=97..98,CC_crippled=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_defiled=99..100,CC_crippled=0}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_defiled=1..,CC_crippled=0}] subtitle {text:"DEFILED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_shieldbreak=1..}] times 0 5 0
title @a[scores={CC_shieldbreak=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_shieldbreak=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_shieldbreak=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_shieldbreak=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_shieldbreak=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_shieldbreak=1..,CC_crippled=0}] subtitle {text:"SHIELD BREAK",color:"red",bold:1b,type:"text"}


title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..}] times 0 5 0
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..2,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=3..4,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=5..6,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=7..8,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=9..10,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=11..12,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=13..14,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=15..16,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=17..18,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=19..20,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=21..22,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=23..24,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=25..26,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=27..28,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=29..30,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=31..32,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=33..34,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=35..36,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=37..38,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=39..40,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=41..42,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=43..44,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=45..46,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=47..48,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=49..50,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=51..52,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=53..54,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=55..56,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=57..58,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=59..60,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=61..62,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=63..64,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=65..66,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=67..68,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=69..70,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=71..72,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=73..74,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=75..76,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=77..78,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=79..80,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=81..82,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=83..84,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=85..86,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=87..88,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=89..90,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=91..92,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=93..94,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=95..96,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=97..98,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=99..100,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] subtitle {text:"SILENCED",color:"red",bold:1b,type:"text"}



title @a[scores={CC_knockup=1..}] times 0 5 0
title @a[scores={CC_knockup=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_knockup=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_knockup=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_knockup=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_knockup=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_knockup=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_knockup=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_knockup=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_knockup=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_knockup=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_knockup=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_knockup=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_knockup=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_knockup=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_knockup=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_knockup=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_knockup=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_knockup=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_knockup=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_knockup=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_knockup=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_knockup=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_knockup=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_knockup=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_knockup=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_knockup=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_knockup=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_knockup=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_knockup=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_knockup=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_knockup=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_knockup=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_knockup=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_knockup=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_knockup=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_knockup=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_knockup=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_knockup=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_knockup=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_knockup=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_knockup=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_knockup=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_knockup=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_knockup=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_knockup=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_knockup=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_knockup=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_knockup=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_knockup=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_knockup=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_knockup=1..}] subtitle {text:"AIRBORNE",color:"red",bold:1b,type:"text"}


title @a[scores={CC_stagger=1..}] times 0 5 0
title @a[scores={CC_stagger=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stagger=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stagger=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stagger=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stagger=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stagger=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stagger=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stagger=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stagger=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stagger=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stagger=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stagger=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stagger=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stagger=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stagger=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stagger=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stagger=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stagger=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stagger=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stagger=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stagger=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stagger=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stagger=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stagger=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stagger=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stagger=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stagger=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stagger=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stagger=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stagger=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stagger=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stagger=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stagger=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stagger=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stagger=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stagger=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stagger=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stagger=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stagger=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stagger=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_stagger=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_stagger=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_stagger=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_stagger=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_stagger=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_stagger=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_stagger=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_stagger=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_stagger=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_stagger=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_stagger=1..}] subtitle {text:"STAGGERED",color:"red",bold:1b,type:"text"}

title @a[scores={CC_crippled=1..,CC_stun=..0,CC_knockup=..0}] times 0 5 1
title @a[scores={CC_crippled=1..,CC_stun=..0,CC_knockup=..0}] title {text:" ",type:"text"}
title @a[scores={CC_crippled=1..,CC_stun=..0,CC_knockup=..0}] subtitle {text:"CRIPPLED",color:"red",bold:1b,type:"text"}


title @a[scores={CC_taunt=1..}] times 0 5 0
title @a[scores={CC_taunt=1..2}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_taunt=3..4}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_taunt=5..6}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_taunt=7..8}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_taunt=9..10}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_taunt=11..12}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_taunt=13..14}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_taunt=15..16}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_taunt=17..18}] title [{text:"0",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_taunt=19..20}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_taunt=21..22}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_taunt=23..24}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_taunt=25..26}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_taunt=27..28}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_taunt=29..30}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_taunt=31..32}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_taunt=33..34}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_taunt=35..36}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_taunt=37..38}] title [{text:"1",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_taunt=39..40}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_taunt=41..42}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_taunt=43..44}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_taunt=45..46}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_taunt=47..48}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_taunt=49..50}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_taunt=51..52}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_taunt=53..54}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_taunt=55..56}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_taunt=57..58}] title [{text:"2",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_taunt=59..60}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_taunt=61..62}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_taunt=63..64}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_taunt=65..66}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_taunt=67..68}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_taunt=69..70}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_taunt=71..72}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_taunt=73..74}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_taunt=75..76}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_taunt=77..78}] title [{text:"3",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_taunt=79..80}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]

title @a[scores={CC_taunt=81..82}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"1",type:"text",color:"red"}]
title @a[scores={CC_taunt=83..84}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"2",type:"text",color:"red"}]
title @a[scores={CC_taunt=85..86}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"3",type:"text",color:"red"}]
title @a[scores={CC_taunt=87..88}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"4",type:"text",color:"red"}]
title @a[scores={CC_taunt=89..90}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"5",type:"text",color:"red"}]
title @a[scores={CC_taunt=91..92}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"6",type:"text",color:"red"}]
title @a[scores={CC_taunt=93..94}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"7",type:"text",color:"red"}]
title @a[scores={CC_taunt=95..96}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"8",type:"text",color:"red"}]
title @a[scores={CC_taunt=97..98}] title [{text:"4",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"9",type:"text",color:"red"}]
title @a[scores={CC_taunt=99..100}] title [{text:"5",type:"text",color:"red"},{text:".",type:"text",color:"dark_red"},{text:"0",type:"text",color:"red"}]
title @a[scores={CC_taunt=1..}] subtitle {text:"TAUNTED",color:"red",bold:1b,type:"text"}


title @a[scores={frostbite=1..}] times 0 5 0
title @a[scores={frostbite=1..2}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={frostbite=3..4}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={frostbite=5..6}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={frostbite=7..8}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={frostbite=9..10}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={frostbite=11..12}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={frostbite=13..14}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={frostbite=15..16}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={frostbite=17..18}] title [{text:"0",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={frostbite=19..20}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={frostbite=21..22}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={frostbite=23..24}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={frostbite=25..26}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={frostbite=27..28}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={frostbite=29..30}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={frostbite=31..32}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={frostbite=33..34}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={frostbite=35..36}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={frostbite=37..38}] title [{text:"1",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={frostbite=39..40}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={frostbite=41..42}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={frostbite=43..44}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={frostbite=45..46}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={frostbite=47..48}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={frostbite=49..50}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={frostbite=51..52}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={frostbite=53..54}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={frostbite=55..56}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={frostbite=57..58}] title [{text:"2",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={frostbite=59..60}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={frostbite=61..62}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={frostbite=63..64}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={frostbite=65..66}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={frostbite=67..68}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={frostbite=69..70}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={frostbite=71..72}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={frostbite=73..74}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={frostbite=75..76}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={frostbite=77..78}] title [{text:"3",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={frostbite=79..80}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]

title @a[scores={frostbite=81..82}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"1",type:"text",color:"aqua"}]
title @a[scores={frostbite=83..84}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"2",type:"text",color:"aqua"}]
title @a[scores={frostbite=85..86}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"3",type:"text",color:"aqua"}]
title @a[scores={frostbite=87..88}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"4",type:"text",color:"aqua"}]
title @a[scores={frostbite=89..90}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"5",type:"text",color:"aqua"}]
title @a[scores={frostbite=91..92}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"6",type:"text",color:"aqua"}]
title @a[scores={frostbite=93..94}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"7",type:"text",color:"aqua"}]
title @a[scores={frostbite=95..96}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"8",type:"text",color:"aqua"}]
title @a[scores={frostbite=97..98}] title [{text:"4",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"9",type:"text",color:"aqua"}]
title @a[scores={frostbite=99..100}] title [{text:"5",type:"text",color:"aqua"},{text:".",type:"text",color:"dark_aqua"},{text:"0",type:"text",color:"aqua"}]
title @a[scores={frostbite=1..}] subtitle {text:"FROSTBITE",color:"aqua",bold:1b,type:"text"}

title @a[scores={CC_flag=1..}] times 0 5 1
title @a[scores={CC_flag=1..}] title {text:" ",type:"text"}
title @a[scores={CC_flag=1..}] subtitle {text:"CARRY THE FLAG BACK TO YOUR BASE",color:"aqua",bold:1b,type:"text"}

title @a[scores={CC_confusion=1..}] times 0 5 1
title @a[scores={CC_confusion=1..}] title {text:" ",type:"text"}
title @a[scores={CC_confusion=1..}] subtitle {text:"CONFUSED",color:"red",bold:1b,type:"text"}

title @a[scores={CC_afterburn=1..}] times 0 5 1
title @a[scores={CC_afterburn=1..}] title {text:" ",type:"text"}
title @a[scores={CC_afterburn=1..}] subtitle {text:"AFTERBURN",color:"red",bold:1b,type:"text"}

# STANDS ====================================================================================================================================================================================================================================

execute at @a[scores={CC_stun=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_stun] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_stun"],Marker:1b,Invisible:1b,CustomName:{text:"STUNNED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_stun=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_stun] ~ ~ ~
execute as @e[tag=display_stun] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_stun=1..}] run kill @s

execute at @a[scores={CC_root=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_root] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_root"],Marker:1b,Invisible:1b,CustomName:{text:"ROOTED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_root=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_root] ~ ~ ~
execute as @e[tag=display_root] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_root=1..}] run kill @s

execute at @a[scores={CC_disarm=1..,CC_stun=..0,CC_knockup=..0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_disarm] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_disarm"],Marker:1b,Invisible:1b,CustomName:{text:"DISARMED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_disarm=1..,CC_stun=..0,CC_knockup=..0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_disarm] ~ ~ ~
execute as @e[tag=display_disarm] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_disarm=1..}] run kill @s

execute at @a[scores={CC_grounded=1..,CC_knockdown=0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_grounded] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_grounded"],Marker:1b,Invisible:1b,CustomName:{text:"GROUNDED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_grounded=1..,CC_knockdown=0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_grounded] ~ ~ ~
execute as @e[tag=display_grounded] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_grounded=1..,CC_knockdown=0}] run kill @s

execute at @a[scores={CC_exhaust=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_exhaust] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_exhaust"],Marker:1b,Invisible:1b,CustomName:{text:"EXHAUSTED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_exhaust=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_exhaust] ~ ~ ~
execute as @e[tag=display_exhaust] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_exhaust=1..}] run kill @s

execute at @a[scores={CC_defiled=1..,CC_crippled=0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_defiled] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_defiled"],Marker:1b,Invisible:1b,CustomName:{text:"DEFILED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_defiled=1..,CC_crippled=0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_defiled] ~ ~ ~
execute as @e[tag=display_defiled] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_defiled=1..}] run kill @s

execute at @a[scores={CC_shieldbreak=1..,CC_crippled=0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_shieldbreak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_shieldbreak"],Marker:1b,Invisible:1b,CustomName:{text:"SHIELD BREAK",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_shieldbreak=1..,CC_crippled=0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_shieldbreak] ~ ~ ~
execute as @e[tag=display_shieldbreak] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_shieldbreak=1..}] run kill @s

execute at @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_silence] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_silence"],Marker:1b,Invisible:1b,CustomName:{text:"SILENCED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..,CC_stun=..0,CC_knockup=..0,CC_flag=0,CC_petrify=0,shard_petrify=0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_silence] ~ ~ ~
execute as @e[tag=display_silence] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,tag=!waiting_room,tag=!respawn_box,scores={CC_silence=1..,CC_stun=..0}] run kill @s

execute at @a[scores={CC_knockup=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_knockup] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_knockup"],Marker:1b,Invisible:1b,CustomName:{text:"AIRBORNE",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_knockup=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_knockup] ~ ~ ~
execute as @e[tag=display_knockup] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_knockup=1..}] run kill @s

execute at @a[scores={CC_stagger=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_stagger] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_stagger"],Marker:1b,Invisible:1b,CustomName:{text:"STAGGERED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_stagger=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_stagger] ~ ~ ~
execute as @e[tag=display_stagger] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_stagger=1..}] run kill @s

execute at @a[scores={CC_crippled=1..,CC_stun=..0,CC_knockup=..0}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_crippled] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_crippled"],Marker:1b,Invisible:1b,CustomName:{text:"CRIPPLED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_crippled=1..,CC_stun=..0,CC_knockup=..0}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_crippled] ~ ~ ~
execute as @e[tag=display_crippled] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_crippled=1..,CC_stun=..0}] run kill @s

execute at @a[scores={CC_petrify=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_petrify] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_petrify"],Marker:1b,Invisible:1b,CustomName:{text:"PETRIFIED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_petrify=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_petrify] ~ ~ ~
execute as @e[tag=display_petrify] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_petrify=1..}] run kill @s

execute at @a[scores={CC_taunt=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_taunt] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_taunt"],Marker:1b,Invisible:1b,CustomName:{text:"TAUNTED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_taunt=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_taunt] ~ ~ ~
execute as @e[tag=display_taunt] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_taunt=1..}] run kill @s

execute at @a[scores={frostbite=1..}] positioned ~ ~3 ~ unless entity @e[distance=..1,tag=display_frostbite] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_frostbite"],Marker:1b,Invisible:1b,CustomName:{text:"FROSTBITE",color:"aqua",bold:1b},CustomNameVisible:1b}
execute at @a[scores={frostbite=1..}] positioned ~ ~3 ~ run tp @e[distance=..1,tag=display_frostbite] ~ ~ ~
execute as @e[tag=display_frostbite] at @s positioned ~ ~-3 ~ unless entity @a[distance=..1,scores={frostbite=1..}] run kill @s

execute at @a[scores={CC_confusion=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_confusion] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_confusion"],Marker:1b,Invisible:1b,CustomName:{text:"CONFUSED",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_confusion=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_confusion] ~ ~ ~
execute as @e[tag=display_confusion] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_confusion=1..}] run kill @s

execute at @a[scores={CC_madness=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_madness] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_madness"],Marker:1b,Invisible:1b,CustomName:{text:"INSANE",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_madness=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_madness] ~ ~ ~
execute as @e[tag=display_madness] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_madness=1..}] run kill @s

execute at @a[scores={CC_afterburn=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_afterburn] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_afterburn"],Marker:1b,Invisible:1b,CustomName:{text:"AFTERBURN",color:"red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_afterburn=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_afterburn] ~ ~ ~
execute as @e[tag=display_afterburn] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_afterburn=1..}] run kill @s

execute at @a[scores={CC_hypothermia=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_hypothermia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_hypothermia"],Marker:1b,Invisible:1b,CustomName:{text:"HYPOTHERMIA",color:"aqua",bold:1b},CustomNameVisible:1b}
execute at @a[scores={CC_hypothermia=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_hypothermia] ~ ~ ~
execute as @e[tag=display_hypothermia] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={CC_hypothermia=1..}] run kill @s

# ====================================================================================================================================================================================================================================
