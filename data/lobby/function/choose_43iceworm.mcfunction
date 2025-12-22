execute if entity @a[scores={char=43}] run tellraw @p[distance=..4] [{text:"Ice Worm",bold:1b,italic:1b,color:"light_purple",type:"text"},{text:" ",type:"text"},{text:"has been already chosen, pick another character!",italic:1b,color:"gray",type:"text"}]
execute if entity @a[scores={char=43}] run tp @p[distance=..4] 242.4 14 -125.5
scoreboard players set @p[distance=..4] char 43
scoreboard players set @p[distance=..4,tag=!PracticeCharPick] Queue 0
#execute if entity @a[scores={char=43},distance=..4] run tellraw @a [{"text":"=","color":"gray"},{"text":" "},{"selector":"@p[scores={char=43}]","color":"aqua"},{"text":" picked ","color":"gray"},{"text":"Skryal","bold":true,"color":"dark_aqua"},{"text":",","color":"gray"},{"text":" The Great Ice Worm","bold":true,"color":"aqua"},{"text":" =","color":"gray"}]
execute as @p[distance=..4] run function messages:lobby_after_char
tp @p[distance=..4] 263.5 14.00 -126.5

