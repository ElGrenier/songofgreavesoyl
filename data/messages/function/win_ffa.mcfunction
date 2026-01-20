tellraw @a ["",{text:"=====",color:"dark_green",strikethrough:1b},{text:" "},{selector:"@a[tag=winner]",color:"gold",bold:1b},{text:" HAS WON! ",bold:1b,color:"green",type:"text"},{text:"=====",color:"dark_green",strikethrough:1b}]
title @a clear
title @a times 20 140 20

title @a title ["",{selector:"@a[tag=winner]",color:"gold"},{text:" has won",color:"yellow"},{text:"!",color:"gold"}]

function messages:show_stats