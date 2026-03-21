data modify storage bans:ban_number colour.2 set value "green"
data modify storage bans:ban_number colour.7 set value "green"
data modify storage bans:ban_number colour.18 set value "green"
data modify storage bans:ban_number colour.34 set value "green"
data modify storage bans:ban_number colour.41 set value "green"
data modify storage bans:ban_number colour.60 set value "green"
data modify storage bans:ban_number colour.64 set value "green"
data modify storage bans:ban_number colour.68 set value "green"
data modify storage bans:ban_number colour.73 set value "green"

kill @e[tag=ban_2]
kill @e[tag=ban_7]
kill @e[tag=ban_18]
kill @e[tag=ban_34]
kill @e[tag=ban_41]
kill @e[tag=ban_60]
kill @e[tag=ban_64]
kill @e[tag=ban_68]
kill @e[tag=ban_73]

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Marksman",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]