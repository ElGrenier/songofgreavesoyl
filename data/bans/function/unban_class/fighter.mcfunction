data modify storage bans:ban_number colour.1 set value "green"
data modify storage bans:ban_number colour.6 set value "green"
data modify storage bans:ban_number colour.13 set value "green"
data modify storage bans:ban_number colour.20 set value "green"
data modify storage bans:ban_number colour.25 set value "green"
data modify storage bans:ban_number colour.31 set value "green"
data modify storage bans:ban_number colour.40 set value "green"
data modify storage bans:ban_number colour.46 set value "green"
data modify storage bans:ban_number colour.49 set value "green"
data modify storage bans:ban_number colour.62 set value "green"
data modify storage bans:ban_number colour.68 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Fighter",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]