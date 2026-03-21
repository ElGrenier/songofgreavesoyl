data modify storage bans:ban_number colour.2 set value "red"
data modify storage bans:ban_number colour.7 set value "red"
data modify storage bans:ban_number colour.18 set value "red"
data modify storage bans:ban_number colour.34 set value "red"
data modify storage bans:ban_number colour.41 set value "red"
data modify storage bans:ban_number colour.60 set value "red"
data modify storage bans:ban_number colour.64 set value "red"
data modify storage bans:ban_number colour.68 set value "red"
data modify storage bans:ban_number colour.73 set value "red"

kill @e[tag=ban_2]
kill @e[tag=ban_7]
kill @e[tag=ban_18]
kill @e[tag=ban_34]
kill @e[tag=ban_41]
kill @e[tag=ban_60]
kill @e[tag=ban_64]
kill @e[tag=ban_68]
kill @e[tag=ban_73]
summon marker 242 5 -126 {Tags:["ban_stand","ban_2"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_7"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_18"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_34"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_41"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_60"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_64"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_68"]}
summon marker 242 5 -126 {Tags:["ban_stand","ban_73"]}
scoreboard players set @e[tag=ban_2] char 2
scoreboard players set @e[tag=ban_7] char 7
scoreboard players set @e[tag=ban_18] char 18
scoreboard players set @e[tag=ban_34] char 34
scoreboard players set @e[tag=ban_41] char 41
scoreboard players set @e[tag=ban_60] char 60
scoreboard players set @e[tag=ban_64] char 64
scoreboard players set @e[tag=ban_68] char 68
scoreboard players set @e[tag=ban_73] char 73

tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@s",color:"red",type:"selector"},{text:" banned ",color:"gray",type:"text"},{text:"Every Marksman",bold:1b,color:"red",type:"text"},{text:" =",color:"gray",type:"text"}]