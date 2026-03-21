data modify storage bans:ban_number colour.14 set value "red"
data modify storage bans:ban_number colour.15 set value "red"
data modify storage bans:ban_number colour.19 set value "red"
data modify storage bans:ban_number colour.27 set value "red"
data modify storage bans:ban_number colour.35 set value "red"
data modify storage bans:ban_number colour.38 set value "red"
data modify storage bans:ban_number colour.51 set value "red"
data modify storage bans:ban_number colour.54 set value "red"
data modify storage bans:ban_number colour.58 set value "red"
data modify storage bans:ban_number colour.63 set value "red"
data modify storage bans:ban_number colour.70 set value "red"
data modify storage bans:ban_number colour.72 set value "red"

kill @e[tag=ban_14]
kill @e[tag=ban_15]
kill @e[tag=ban_19]
kill @e[tag=ban_27]
kill @e[tag=ban_35]
kill @e[tag=ban_38]
kill @e[tag=ban_51]
kill @e[tag=ban_54]
kill @e[tag=ban_58]
kill @e[tag=ban_63]
kill @e[tag=ban_70]
kill @e[tag=ban_72]
summon marker 242 5 -126 {Tags:["ban_stand","ban_14"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_15"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_19"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_27"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_35"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_38"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_51"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_54"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_58"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_63"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_70"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_72"]}
scoreboard players set @e[tag=ban_14] char 14
scoreboard players set @e[tag=ban_15] char 15
scoreboard players set @e[tag=ban_19] char 19
scoreboard players set @e[tag=ban_27] char 27
scoreboard players set @e[tag=ban_35] char 35
scoreboard players set @e[tag=ban_38] char 38
scoreboard players set @e[tag=ban_51] char 51
scoreboard players set @e[tag=ban_54] char 54
scoreboard players set @e[tag=ban_58] char 58
scoreboard players set @e[tag=ban_63] char 63
scoreboard players set @e[tag=ban_70] char 70
scoreboard players set @e[tag=ban_72] char 72

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Support",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]