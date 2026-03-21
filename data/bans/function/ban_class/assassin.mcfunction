data modify storage bans:ban_number colour.4 set value "red"
data modify storage bans:ban_number colour.9 set value "red"
data modify storage bans:ban_number colour.23 set value "red"
data modify storage bans:ban_number colour.26 set value "red"
data modify storage bans:ban_number colour.33 set value "red"
data modify storage bans:ban_number colour.37 set value "red"
data modify storage bans:ban_number colour.42 set value "red"
data modify storage bans:ban_number colour.44 set value "red"
data modify storage bans:ban_number colour.55 set value "red"
data modify storage bans:ban_number colour.65 set value "red"

kill @e[tag=ban_4]
kill @e[tag=ban_9]
kill @e[tag=ban_23]
kill @e[tag=ban_26]
kill @e[tag=ban_33]
kill @e[tag=ban_37]
kill @e[tag=ban_42]
kill @e[tag=ban_44]
kill @e[tag=ban_55]
kill @e[tag=ban_65]
summon marker 242 5 -126 {Tags:["ban_stand","ban_4"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_9"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_23"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_26"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_33"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_37"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_42"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_44"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_55"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_65"]}
scoreboard players set @e[tag=ban_4] char 4
scoreboard players set @e[tag=ban_9] char 9
scoreboard players set @e[tag=ban_23] char 23
scoreboard players set @e[tag=ban_26] char 26
scoreboard players set @e[tag=ban_33] char 33
scoreboard players set @e[tag=ban_37] char 37
scoreboard players set @e[tag=ban_42] char 42
scoreboard players set @e[tag=ban_44] char 44
scoreboard players set @e[tag=ban_55] char 55
scoreboard players set @e[tag=ban_65] char 65

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Assassin",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]