# Wywołanie wewnątrz altars:system
# execute as @e[tag=Altars,scores={Assault2=0,Assault=1}] at @s run function messages:altars_siege
execute if entity @s[team=yellow] at @s run tellraw @a [{text:"",type:"text"},{selector:"@s",bold:1b,type:"selector"},{text:" is being attacked by ",color:"aqua",type:"text"},{selector:"@p[team=purple]",bold:1b,type:"selector"}]
execute if entity @s[team=purple] at @s run tellraw @a [{text:"",type:"text"},{selector:"@s",bold:1b,type:"selector"},{text:" is being attacked by ",color:"aqua",type:"text"},{selector:"@p[team=yellow]",bold:1b,type:"selector"}]