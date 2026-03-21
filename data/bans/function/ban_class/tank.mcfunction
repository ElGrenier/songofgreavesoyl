data modify storage bans:ban_number colour.3 set value "red"
data modify storage bans:ban_number colour.12 set value "red"
data modify storage bans:ban_number colour.16 set value "red"
data modify storage bans:ban_number colour.22 set value "red"
data modify storage bans:ban_number colour.32 set value "red"
data modify storage bans:ban_number colour.39 set value "red"
data modify storage bans:ban_number colour.47 set value "red"
data modify storage bans:ban_number colour.57 set value "red"
data modify storage bans:ban_number colour.67 set value "red"
data modify storage bans:ban_number colour.74 set value "red"

kill @e[tag=ban_3]
kill @e[tag=ban_12]
kill @e[tag=ban_16]
kill @e[tag=ban_22]
kill @e[tag=ban_32]
kill @e[tag=ban_39]
kill @e[tag=ban_47]
kill @e[tag=ban_57]
kill @e[tag=ban_67]
kill @e[tag=ban_74]
summon marker 242 5 -126 {Tags:["ban_stand","ban_3"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_12"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_16"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_22"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_32"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_39"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_47"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_57"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_67"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_74"]}
scoreboard players set @e[tag=ban_3] char 3
scoreboard players set @e[tag=ban_12] char 12
scoreboard players set @e[tag=ban_16] char 16
scoreboard players set @e[tag=ban_22] char 22
scoreboard players set @e[tag=ban_32] char 32
scoreboard players set @e[tag=ban_39] char 39
scoreboard players set @e[tag=ban_47] char 47
scoreboard players set @e[tag=ban_57] char 57
scoreboard players set @e[tag=ban_67] char 67
scoreboard players set @e[tag=ban_74] char 74

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Tank",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]