data modify storage bans:ban_number colour.8 set value "red"
data modify storage bans:ban_number colour.11 set value "red"
data modify storage bans:ban_number colour.17 set value "red"
data modify storage bans:ban_number colour.21 set value "red"
data modify storage bans:ban_number colour.30 set value "red"
data modify storage bans:ban_number colour.43 set value "red"
data modify storage bans:ban_number colour.50 set value "red"
data modify storage bans:ban_number colour.53 set value "red"
data modify storage bans:ban_number colour.59 set value "red"
data modify storage bans:ban_number colour.71 set value "red"

kill @e[tag=ban_8]
kill @e[tag=ban_11]
kill @e[tag=ban_17]
kill @e[tag=ban_21]
kill @e[tag=ban_30]
kill @e[tag=ban_43]
kill @e[tag=ban_50]
kill @e[tag=ban_53]
kill @e[tag=ban_59]
kill @e[tag=ban_71]
summon marker 242 5 -126 {Tags:["ban_stand","ban_8"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_11"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_17"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_21"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_30"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_43"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_50"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_53"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_59"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_71"]}
scoreboard players set @e[tag=ban_8] char 8
scoreboard players set @e[tag=ban_11] char 11
scoreboard players set @e[tag=ban_17] char 17
scoreboard players set @e[tag=ban_21] char 21
scoreboard players set @e[tag=ban_30] char 30
scoreboard players set @e[tag=ban_43] char 43
scoreboard players set @e[tag=ban_50] char 50
scoreboard players set @e[tag=ban_53] char 53
scoreboard players set @e[tag=ban_59] char 59
scoreboard players set @e[tag=ban_71] char 71

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Specialist",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]