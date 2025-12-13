kill @e[type=minecraft:item,nbt={Item:{id:"barrier"}}]
scoreboard players remove @a[scores={CC_silence=0,spellCD1=1..}] spellCD1 1
scoreboard players remove @a[scores={CC_silence=0,spellCD2=1..}] spellCD2 1
scoreboard players remove @a[scores={CC_silence=0,spellCD3=1..}] spellCD3 1
scoreboard players remove @a[scores={CC_silence=0,spellCD0=1..}] spellCD0 1
clear @a[scores={CC_silence=0,spellCD1=1..2}] barrier
item replace entity @a[scores={CC_silence=0,spellCD1=2..3}] hotbar.1 with minecraft:air

#execute as @a unless score @s char matches 17 run scoreboard players set @a[scores={CC_silence=0,s0_timer=0}] spellCD0 0
#execute as @a unless score @s char matches 17 run scoreboard players set @a[scores={CC_silence=0,s1_timer=0}] spellCD1 0
#execute as @a unless score @s char matches 17 run scoreboard players set @a[scores={CC_silence=0,s2_timer=0}] spellCD2 0
#execute as @a unless score @s char matches 17 run scoreboard players set @s[scores={CC_silence=0,s3_timer=0}] spellCD3 0

scoreboard players set @a[scores={CC_silence=0,s0_timer=0}] spellCD0 0
scoreboard players set @a[scores={CC_silence=0,s1_timer=0}] spellCD1 0
scoreboard players set @a[scores={CC_silence=0,s2_timer=0}] spellCD2 0
scoreboard players set @s[scores={CC_silence=0,s3_timer=0}] spellCD3 0


item replace entity @a[scores={CC_silence=0,spellCD1=3..20}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 1
item replace entity @a[scores={CC_silence=0,spellCD1=21..40}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 2
item replace entity @a[scores={CC_silence=0,spellCD1=41..60}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 3
item replace entity @a[scores={CC_silence=0,spellCD1=61..80}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 4
item replace entity @a[scores={CC_silence=0,spellCD1=81..100}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 5
item replace entity @a[scores={CC_silence=0,spellCD1=101..120}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 6
item replace entity @a[scores={CC_silence=0,spellCD1=121..140}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 7
item replace entity @a[scores={CC_silence=0,spellCD1=141..160}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 8
item replace entity @a[scores={CC_silence=0,spellCD1=161..180}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 9
item replace entity @a[scores={CC_silence=0,spellCD1=181..200}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 10
item replace entity @a[scores={CC_silence=0,spellCD1=201..220}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 11
item replace entity @a[scores={CC_silence=0,spellCD1=221..240}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 12
item replace entity @a[scores={CC_silence=0,spellCD1=241..260}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 13
item replace entity @a[scores={CC_silence=0,spellCD1=261..280}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 14
item replace entity @a[scores={CC_silence=0,spellCD1=281..300}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 15
item replace entity @a[scores={CC_silence=0,spellCD1=301..320}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 16
item replace entity @a[scores={CC_silence=0,spellCD1=321..340}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 17
item replace entity @a[scores={CC_silence=0,spellCD1=341..360}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 18
item replace entity @a[scores={CC_silence=0,spellCD1=361..380}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 19
item replace entity @a[scores={CC_silence=0,spellCD1=381..400}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 20
item replace entity @a[scores={CC_silence=0,spellCD1=401..420}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 21
item replace entity @a[scores={CC_silence=0,spellCD1=421..440}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 22
item replace entity @a[scores={CC_silence=0,spellCD1=441..460}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 23
item replace entity @a[scores={CC_silence=0,spellCD1=461..480}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 24
item replace entity @a[scores={CC_silence=0,spellCD1=481..500}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 25
item replace entity @a[scores={CC_silence=0,spellCD1=501..520}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 26
item replace entity @a[scores={CC_silence=0,spellCD1=521..540}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 27
item replace entity @a[scores={CC_silence=0,spellCD1=541..560}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 28
item replace entity @a[scores={CC_silence=0,spellCD1=561..580}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 29
item replace entity @a[scores={CC_silence=0,spellCD1=581..600}] hotbar.1 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 30

clear @a[scores={CC_silence=0,spellCD2=1..2}] barrier
item replace entity @a[scores={CC_silence=0,spellCD2=2..3}] hotbar.2 with minecraft:air

item replace entity @a[scores={CC_silence=0,spellCD2=3..20}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 1
item replace entity @a[scores={CC_silence=0,spellCD2=21..40}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 2
item replace entity @a[scores={CC_silence=0,spellCD2=41..60}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 3
item replace entity @a[scores={CC_silence=0,spellCD2=61..80}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 4
item replace entity @a[scores={CC_silence=0,spellCD2=81..100}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 5
item replace entity @a[scores={CC_silence=0,spellCD2=101..120}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 6
item replace entity @a[scores={CC_silence=0,spellCD2=121..140}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 7
item replace entity @a[scores={CC_silence=0,spellCD2=141..160}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 8
item replace entity @a[scores={CC_silence=0,spellCD2=161..180}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 9
item replace entity @a[scores={CC_silence=0,spellCD2=181..200}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 10
item replace entity @a[scores={CC_silence=0,spellCD2=201..220}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 11
item replace entity @a[scores={CC_silence=0,spellCD2=221..240}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 12
item replace entity @a[scores={CC_silence=0,spellCD2=241..260}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 13
item replace entity @a[scores={CC_silence=0,spellCD2=261..280}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 14
item replace entity @a[scores={CC_silence=0,spellCD2=281..300}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 15
item replace entity @a[scores={CC_silence=0,spellCD2=301..320}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 16
item replace entity @a[scores={CC_silence=0,spellCD2=321..340}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 17
item replace entity @a[scores={CC_silence=0,spellCD2=341..360}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 18
item replace entity @a[scores={CC_silence=0,spellCD2=361..380}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 19
item replace entity @a[scores={CC_silence=0,spellCD2=381..400}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 20
item replace entity @a[scores={CC_silence=0,spellCD2=401..420}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 21
item replace entity @a[scores={CC_silence=0,spellCD2=421..440}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 22
item replace entity @a[scores={CC_silence=0,spellCD2=441..460}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 23
item replace entity @a[scores={CC_silence=0,spellCD2=461..480}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 24
item replace entity @a[scores={CC_silence=0,spellCD2=481..500}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 25
item replace entity @a[scores={CC_silence=0,spellCD2=501..520}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 26
item replace entity @a[scores={CC_silence=0,spellCD2=521..540}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 27
item replace entity @a[scores={CC_silence=0,spellCD2=541..560}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 28
item replace entity @a[scores={CC_silence=0,spellCD2=561..580}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 29
item replace entity @a[scores={CC_silence=0,spellCD2=581..600}] hotbar.2 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 30

clear @a[scores={CC_silence=0,spellCD3=1..2}] barrier
item replace entity @a[scores={CC_silence=0,spellCD3=2..3}] hotbar.3 with minecraft:air

item replace entity @a[scores={CC_silence=0,spellCD3=3..20}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 1
item replace entity @a[scores={CC_silence=0,spellCD3=21..40}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 2
item replace entity @a[scores={CC_silence=0,spellCD3=41..60}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 3
item replace entity @a[scores={CC_silence=0,spellCD3=61..80}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 4
item replace entity @a[scores={CC_silence=0,spellCD3=81..100}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 5
item replace entity @a[scores={CC_silence=0,spellCD3=101..120}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 6
item replace entity @a[scores={CC_silence=0,spellCD3=121..140}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 7
item replace entity @a[scores={CC_silence=0,spellCD3=141..160}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 8
item replace entity @a[scores={CC_silence=0,spellCD3=161..180}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 9
item replace entity @a[scores={CC_silence=0,spellCD3=181..200}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 10
item replace entity @a[scores={CC_silence=0,spellCD3=201..220}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 11
item replace entity @a[scores={CC_silence=0,spellCD3=221..240}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 12
item replace entity @a[scores={CC_silence=0,spellCD3=241..260}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 13
item replace entity @a[scores={CC_silence=0,spellCD3=261..280}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 14
item replace entity @a[scores={CC_silence=0,spellCD3=281..300}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 15
item replace entity @a[scores={CC_silence=0,spellCD3=301..320}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 16
item replace entity @a[scores={CC_silence=0,spellCD3=321..340}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 17
item replace entity @a[scores={CC_silence=0,spellCD3=341..360}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 18
item replace entity @a[scores={CC_silence=0,spellCD3=361..380}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 19
item replace entity @a[scores={CC_silence=0,spellCD3=381..400}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 20
item replace entity @a[scores={CC_silence=0,spellCD3=401..420}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 21
item replace entity @a[scores={CC_silence=0,spellCD3=421..440}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 22
item replace entity @a[scores={CC_silence=0,spellCD3=441..460}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 23
item replace entity @a[scores={CC_silence=0,spellCD3=461..480}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 24
item replace entity @a[scores={CC_silence=0,spellCD3=481..500}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 25
item replace entity @a[scores={CC_silence=0,spellCD3=501..520}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 26
item replace entity @a[scores={CC_silence=0,spellCD3=521..540}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 27
item replace entity @a[scores={CC_silence=0,spellCD3=541..560}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 28
item replace entity @a[scores={CC_silence=0,spellCD3=561..580}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 29
item replace entity @a[scores={CC_silence=0,spellCD3=581..600}] hotbar.3 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 30



item replace entity @a[scores={CC_silence=0,spellCD0=3..20}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 1
item replace entity @a[scores={CC_silence=0,spellCD0=21..40}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 2
item replace entity @a[scores={CC_silence=0,spellCD0=41..60}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 3
item replace entity @a[scores={CC_silence=0,spellCD0=61..80}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 4
item replace entity @a[scores={CC_silence=0,spellCD0=81..100}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 5
item replace entity @a[scores={CC_silence=0,spellCD0=101..120}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 6
item replace entity @a[scores={CC_silence=0,spellCD0=121..140}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 7
item replace entity @a[scores={CC_silence=0,spellCD0=141..160}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 8
item replace entity @a[scores={CC_silence=0,spellCD0=161..180}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 9
item replace entity @a[scores={CC_silence=0,spellCD0=181..200}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 10
item replace entity @a[scores={CC_silence=0,spellCD0=201..220}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 11
item replace entity @a[scores={CC_silence=0,spellCD0=221..240}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 12
item replace entity @a[scores={CC_silence=0,spellCD0=241..260}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 13
item replace entity @a[scores={CC_silence=0,spellCD0=261..280}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 14
item replace entity @a[scores={CC_silence=0,spellCD0=281..300}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 15
item replace entity @a[scores={CC_silence=0,spellCD0=301..320}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 16
item replace entity @a[scores={CC_silence=0,spellCD0=321..340}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 17
item replace entity @a[scores={CC_silence=0,spellCD0=341..360}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 18
item replace entity @a[scores={CC_silence=0,spellCD0=361..380}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 19
item replace entity @a[scores={CC_silence=0,spellCD0=381..400}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 20
item replace entity @a[scores={CC_silence=0,spellCD0=401..420}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 21
item replace entity @a[scores={CC_silence=0,spellCD0=421..440}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 22
item replace entity @a[scores={CC_silence=0,spellCD0=441..460}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 23
item replace entity @a[scores={CC_silence=0,spellCD0=461..480}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 24
item replace entity @a[scores={CC_silence=0,spellCD0=481..500}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 25
item replace entity @a[scores={CC_silence=0,spellCD0=501..520}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 26
item replace entity @a[scores={CC_silence=0,spellCD0=521..540}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 27
item replace entity @a[scores={CC_silence=0,spellCD0=541..560}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 28
item replace entity @a[scores={CC_silence=0,spellCD0=561..580}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 29
item replace entity @a[scores={CC_silence=0,spellCD0=581..600}] hotbar.0 with barrier[minecraft:custom_name={text:"This ability is on cooldown",color:"gray"}] 30

clear @a[scores={CC_silence=0,spellCD0=1..2}] barrier
item replace entity @a[scores={CC_silence=0,spellCD0=2..3}] hotbar.0 with minecraft:air









