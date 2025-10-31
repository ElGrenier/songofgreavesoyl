execute if entity @a[scores={char=1000}] run tellraw @p[distance=..3] [{text:"Amogus",bold:1b,italic:1b,color:"light_purple",type:"text"},{text:" ",type:"text"},{text:"has been already chosen, pick another hero!",italic:1b,color:"gray",type:"text"}]
execute if entity @a[scores={char=1000}] run tp @p[distance=..3] 242.4 14 -125.5
scoreboard players set @p[distance=..3] char 1000
scoreboard players set @p[distance=..3,tag=!PracticeCharPick] Queue 0
execute if entity @a[distance=..3,scores={char=1000}] run tellraw @a [{text:"=",color:"gray",type:"text"},{text:" ",type:"text"},{selector:"@p[scores={char=1000}]",color:"aqua",type:"selector"},{text:" picked ",color:"gray",type:"text"},{text:"Amogus",bold:1b,color:"dark_aqua",type:"text"},{text:",",color:"gray",type:"text"},{text:" The Impostor",bold:1b,color:"aqua",type:"text"},{text:" =",color:"gray",type:"text"}]
execute as @p[distance=..3] run function messages:lobby_after_char
tp @p[distance=..3] 263.5 14.00 -126.5

