data modify storage bans:ban_number colour.4 set value "green"
data modify storage bans:ban_number colour.9 set value "green"
data modify storage bans:ban_number colour.23 set value "green"
data modify storage bans:ban_number colour.26 set value "green"
data modify storage bans:ban_number colour.33 set value "green"
data modify storage bans:ban_number colour.37 set value "green"
data modify storage bans:ban_number colour.42 set value "green"
data modify storage bans:ban_number colour.44 set value "green"
data modify storage bans:ban_number colour.55 set value "green"
data modify storage bans:ban_number colour.65 set value "green"

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

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"green",type:"selector"},{text:" unbanned ",color:"gray",type:"text"},{text:"Every Assassin",bold:1b,color:"green",type:"text"},{text:" =",color:"gray",type:"text"}]