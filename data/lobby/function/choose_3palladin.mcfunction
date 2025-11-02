execute if entity @a[scores={char=3}] run tellraw @p[distance=..3] [{text:"Frozen Palladin",bold:1b,italic:1b,color:"light_purple",type:"text"},{text:" ",type:"text"},{text:"has been already chosen, pick another character!",italic:1b,color:"gray",type:"text"}]
scoreboard players set @p[distance=..3] char 3


