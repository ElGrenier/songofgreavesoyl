data modify storage bans:ban_number colour.5 set value "red"
data modify storage bans:ban_number colour.10 set value "red"
data modify storage bans:ban_number colour.24 set value "red"
data modify storage bans:ban_number colour.28 set value "red"
data modify storage bans:ban_number colour.36 set value "red"
data modify storage bans:ban_number colour.45 set value "red"
data modify storage bans:ban_number colour.48 set value "red"
data modify storage bans:ban_number colour.52 set value "red"
data modify storage bans:ban_number colour.56 set value "red"
data modify storage bans:ban_number colour.61 set value "red"
data modify storage bans:ban_number colour.66 set value "red"
data modify storage bans:ban_number colour.69 set value "red"
data modify storage bans:ban_number colour.75 set value "red"

kill @e[tag=ban_5]
kill @e[tag=ban_10]
kill @e[tag=ban_24]
kill @e[tag=ban_28]
kill @e[tag=ban_36]
kill @e[tag=ban_45]
kill @e[tag=ban_48]
kill @e[tag=ban_52]
kill @e[tag=ban_56]
kill @e[tag=ban_61]
kill @e[tag=ban_66]
kill @e[tag=ban_69]
kill @e[tag=ban_75]
summon marker 242 5 -126 {Tags:["ban_stand","ban_5"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_10"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_24"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_28"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_36"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_45"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_48"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_52"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_56"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_61"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_66"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_69"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_75"]}
scoreboard players set @e[tag=ban_5] char 5
scoreboard players set @e[tag=ban_10] char 10
scoreboard players set @e[tag=ban_24] char 24
scoreboard players set @e[tag=ban_28] char 28
scoreboard players set @e[tag=ban_36] char 36
scoreboard players set @e[tag=ban_45] char 45
scoreboard players set @e[tag=ban_48] char 48
scoreboard players set @e[tag=ban_52] char 52
scoreboard players set @e[tag=ban_56] char 56
scoreboard players set @e[tag=ban_61] char 61
scoreboard players set @e[tag=ban_66] char 66
scoreboard players set @e[tag=ban_69] char 69
scoreboard players set @e[tag=ban_75] char 75

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Mage",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]