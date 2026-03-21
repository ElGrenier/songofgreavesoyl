data modify storage bans:ban_number colour.8 set value "green"
data modify storage bans:ban_number colour.11 set value "green"
data modify storage bans:ban_number colour.17 set value "green"
data modify storage bans:ban_number colour.21 set value "green"
data modify storage bans:ban_number colour.30 set value "green"
data modify storage bans:ban_number colour.43 set value "green"
data modify storage bans:ban_number colour.50 set value "green"
data modify storage bans:ban_number colour.53 set value "green"
data modify storage bans:ban_number colour.59 set value "green"
data modify storage bans:ban_number colour.71 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Specialist",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]