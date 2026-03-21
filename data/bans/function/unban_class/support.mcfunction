data modify storage bans:ban_number colour.14 set value "green"
data modify storage bans:ban_number colour.15 set value "green"
data modify storage bans:ban_number colour.19 set value "green"
data modify storage bans:ban_number colour.27 set value "green"
data modify storage bans:ban_number colour.35 set value "green"
data modify storage bans:ban_number colour.38 set value "green"
data modify storage bans:ban_number colour.51 set value "green"
data modify storage bans:ban_number colour.54 set value "green"
data modify storage bans:ban_number colour.58 set value "green"
data modify storage bans:ban_number colour.63 set value "green"
data modify storage bans:ban_number colour.70 set value "green"
data modify storage bans:ban_number colour.72 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Support",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]