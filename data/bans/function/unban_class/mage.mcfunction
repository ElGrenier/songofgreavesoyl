data modify storage bans:ban_number colour.5 set value "green"
data modify storage bans:ban_number colour.10 set value "green"
data modify storage bans:ban_number colour.24 set value "green"
data modify storage bans:ban_number colour.28 set value "green"
data modify storage bans:ban_number colour.36 set value "green"
data modify storage bans:ban_number colour.45 set value "green"
data modify storage bans:ban_number colour.48 set value "green"
data modify storage bans:ban_number colour.52 set value "green"
data modify storage bans:ban_number colour.56 set value "green"
data modify storage bans:ban_number colour.61 set value "green"
data modify storage bans:ban_number colour.66 set value "green"
data modify storage bans:ban_number colour.69 set value "green"
data modify storage bans:ban_number colour.75 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Mage",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]