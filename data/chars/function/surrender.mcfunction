

#surrender checks

scoreboard players set @a[scores={surrender=0,s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] surrender 1
scoreboard players set @a[scores={surrender=0,s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 1}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] surrender 1

scoreboard players set @a[scores={cancel_sur=0,s1_use=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] cancel_sur 1
scoreboard players set @a[scores={cancel_sur=0,s1_drop=1..,char=1..},nbt={SelectedItem:{components: {"minecraft:custom_data": {surrender_flag: 2}}, count: 1, id: "minecraft:carrot_on_a_stick"}}] cancel_sur 1


#surrender vote
scoreboard players add @a[scores={surrender=1..3}] surrender 1
execute at @a[scores={surrender=2},team=yellow] run tellraw @a[team=yellow] [{selector:"@a[scores={surrender=2}]",color:"yellow",bold:1b,type:"selector"},{text:" wants to ",color:"gray",type:"text"},{text:"surrender",color:"white",bold:1b,type:"text"}]
execute at @a[scores={surrender=2},team=purple] run tellraw @a[team=purple] [{selector:"@a[scores={surrender=2}]",color:"dark_purple",bold:1b,type:"selector"},{text:" wants to ",color:"gray",type:"text"},{text:"surrender",color:"white",bold:1b,type:"text"}]

item replace entity @a[scores={surrender=3}] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:red_banner",custom_data={surrender_flag:2},minecraft:custom_name={text:"Cancel Surrender Vote",color:"red",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1

#cancel surrender
execute at @a[scores={cancel_sur=1},team=yellow] run tellraw @a[team=yellow] [{selector:"@a[scores={cancel_sur=1}]",color:"yellow",bold:1b,type:"selector"},{text:" no longer wants to ",color:"gray",type:"text"},{text:"surrender",color:"white",bold:0b,type:"text"}]
execute at @a[scores={cancel_sur=1},team=purple] run tellraw @a[team=purple] [{selector:"@a[scores={cancel_sur=1}]",color:"dark_purple",bold:1b,type:"selector"},{text:" no longer wants to ",color:"gray",type:"text"},{text:"surrender",color:"white",bold:0b,type:"text"}]
scoreboard players set @a[scores={cancel_sur=1..}] surrender 0
item replace entity @a[scores={cancel_sur=1..}] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:white_banner",custom_data={surrender_flag:1},minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1
scoreboard players set @a[scores={cancel_sur=1..}] cancel_sur 0


#surrendering


execute if entity @a[scores={surrender=4},team=yellow] unless entity @a[scores={surrender=0},team=yellow] run function core:score/win_purple
execute if entity @a[scores={surrender=4},team=purple] unless entity @a[scores={surrender=0},team=purple] run function core:score/win_yellow


execute if entity @a[scores={surrender=4},team=ffa] unless entity @a[scores={surrender=0},team=ffa] run function core:score/win_solo


#cancel if single player

execute if entity @a[scores={surrender=4},team=yellow] unless entity @a[scores={surrender=0},team=yellow] unless entity @a[team=purple] run scoreboard players set @a[scores={surrender=4},team=yellow] surrender 10
execute if entity @a[scores={surrender=4},team=purple] unless entity @a[scores={surrender=0},team=purple] unless entity @a[team=yellow] run scoreboard players set @a[scores={surrender=4},team=purple] surrender 10

execute if entity @a[scores={surrender=4},team=ffa] unless entity @a[scores={surrender=0},team=ffa] run scoreboard players set @a[scores={surrender=4},team=ffa] surrender 10

execute unless score map_type settings matches 4 run tellraw @a[scores={surrender=12}] [{text:"=============================\n\n",color:"dark_blue",type:"text"},{text:"No enemy players detected. The game will be cancelled now.",color:"aqua",type:"text"},{text:"\n\n=============================",color:"dark_blue",type:"text"}]

execute if entity @a[scores={surrender=65}] run function reset:reset
scoreboard players add @a[scores={surrender=10..70}] surrender 1
scoreboard players set @a[scores={surrender=90..}] surrender 0

#filling items

execute unless score map_type settings matches 4 as @a[scores={surrender=0,char=1..},tag=!PracticeRoom] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run clear @s carrot_on_a_stick[custom_data={surrender_flag:1}]
execute unless score map_type settings matches 4 run item replace entity @a[scores={surrender=0,char=1..},tag=!PracticeRoom] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:white_banner",custom_data={surrender_flag:1},minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1

execute unless score map_type settings matches 4 as @a[scores={surrender=1..,cancel_sur=0,char=1..},tag=!PracticeRoom] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run clear @s carrot_on_a_stick[custom_data={surrender_flag:2}]
execute unless score map_type settings matches 4 run item replace entity @a[scores={surrender=1..,cancel_sur=0,char=1..},tag=!PracticeRoom] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:red_banner",custom_data={surrender_flag:2},minecraft:custom_name={text:"Cancel Surrender Vote",color:"red",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1

execute if score map_type settings matches 4 as @a[scores={surrender=0,char=1..},tag=!PracticeRoom] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run clear @s carrot_on_a_stick[custom_data={surrender_flag:1}]
execute if score map_type settings matches 4 run item replace entity @a[scores={surrender=0,char=1..},tag=!PracticeRoom] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:white_banner",custom_data={surrender_flag:1},minecraft:custom_name={text:"Give Up",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1

execute if score map_type settings matches 4 as @a[scores={surrender=1..,cancel_sur=0,char=1..},tag=!PracticeRoom] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run clear @s carrot_on_a_stick[custom_data={surrender_flag:2}]
execute if score map_type settings matches 4 run item replace entity @a[scores={surrender=1..,cancel_sur=0,char=1..},tag=!PracticeRoom] hotbar.6 with carrot_on_a_stick[minecraft:item_model="minecraft:red_banner",custom_data={surrender_flag:2},minecraft:custom_name={text:"Cancel Giving Up",color:"red",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1




