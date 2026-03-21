data modify storage bans:ban_number colour.1 set value "red"
data modify storage bans:ban_number colour.6 set value "red"
data modify storage bans:ban_number colour.13 set value "red"
data modify storage bans:ban_number colour.20 set value "red"
data modify storage bans:ban_number colour.25 set value "red"
data modify storage bans:ban_number colour.31 set value "red"
data modify storage bans:ban_number colour.40 set value "red"
data modify storage bans:ban_number colour.46 set value "red"
data modify storage bans:ban_number colour.49 set value "red"
data modify storage bans:ban_number colour.62 set value "red"
data modify storage bans:ban_number colour.68 set value "red"

kill @e[tag=ban_1]
kill @e[tag=ban_6]
kill @e[tag=ban_13]
kill @e[tag=ban_20]
kill @e[tag=ban_25]
kill @e[tag=ban_31]
kill @e[tag=ban_40]
kill @e[tag=ban_46]
kill @e[tag=ban_49]
kill @e[tag=ban_62]
kill @e[tag=ban_68]
summon marker 242 5 -126 {Tags:["ban_stand","ban_1"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_6"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_13"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_20"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_25"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_31"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_40"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_46"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_49"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_62"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_68"]}
scoreboard players set @e[tag=ban_1] char 1
scoreboard players set @e[tag=ban_6] char 6
scoreboard players set @e[tag=ban_13] char 13
scoreboard players set @e[tag=ban_20] char 20
scoreboard players set @e[tag=ban_25] char 25
scoreboard players set @e[tag=ban_31] char 31
scoreboard players set @e[tag=ban_40] char 40
scoreboard players set @e[tag=ban_46] char 46
scoreboard players set @e[tag=ban_49] char 49
scoreboard players set @e[tag=ban_62] char 62
scoreboard players set @e[tag=ban_68] char 68

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Fighter",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]