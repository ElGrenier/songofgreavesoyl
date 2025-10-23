execute if entity @a[scores={char=58}] run tellraw @p[distance=..3] [{text:"The Purifier",bold:1b,italic:1b,color:"light_purple",type:"text"},{text:" ",type:"text"},{text:"has been already chosen, pick another character!",italic:1b,color:"gray",type:"text"}]
execute if entity @a[scores={char=58}] run tp @p[distance=..3] 242.4 14 -125.5
scoreboard players set @p[distance=..3] char 58
scoreboard players set @p[distance=..3,tag=!PracticeCharPick] Queue 0
#execute if entity @a[scores={char=58},distance=..3] run tellraw @a [{"text":"=","color":"gray"},{"text":" "},{"selector":"@p[scores={char=58}]","color":"aqua"},{"text":" picked ","color":"gray"},{"text":"Tahras","bold":true,"color":"dark_aqua"},{"text":",","color":"gray"},{"text":" The Purifier","bold":true,"color":"aqua"},{"text":" =","color":"gray"}]
execute as @p[distance=..3] run function messages:lobby_after_char
tp @p[distance=..3] 263.5 14.00 -126.5

