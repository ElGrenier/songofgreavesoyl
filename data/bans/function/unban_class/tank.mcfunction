data modify storage bans:ban_number colour.3 set value "green"
data modify storage bans:ban_number colour.12 set value "green"
data modify storage bans:ban_number colour.16 set value "green"
data modify storage bans:ban_number colour.22 set value "green"
data modify storage bans:ban_number colour.32 set value "green"
data modify storage bans:ban_number colour.39 set value "green"
data modify storage bans:ban_number colour.47 set value "green"
data modify storage bans:ban_number colour.57 set value "green"
data modify storage bans:ban_number colour.67 set value "green"
data modify storage bans:ban_number colour.74 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Tank",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]