execute if entity @a[scores={char=10}] run tellraw @p[distance=..3] [{text:"Kraken",bold:1b,italic:1b,color:"light_purple",type:"text"},{text:" ",type:"text"},{text:"has been already chosen, pick another character!",italic:1b,color:"gray",type:"text"}]
execute unless entity @a[scores={char=10}] run scoreboard players set @p[distance=..3] char 10
tp @p[distance=..3] ~ ~ ~-6
