
title @s times 40 100 20
title @s title {text:"Songs of Greavesoyl",color:"gold",bold:0b,underlined:0b,type:"text"}
title @s subtitle [{text:"v3.10.3",color:"gray",bold:0b,type:"text"},{text:" - ",color:"dark_gray",bold:0b,type:"text"},{text:"Paint My World",color:"yellow",bold:0b,type:"text"}]

tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",type:"text"}
tellraw @s [{text:"=======",bold:1b,color:"dark_green",type:"text"},{text:" Welcome to Songs of Greavesoyl",bold:1b,color:"green",type:"text"},{text:" =======",bold:1b,color:"dark_green",type:"text"}]
tellraw @s [{text:"                    ",bold:1b,type:"text"},{text:"v3.10.3",color:"aqua",bold:0b,type:"text"},{text:" - ",color:"dark_gray",bold:1b,type:"text"},{text:"Paint My World",color:"aqua",bold:0b,type:"text"}]

tellraw @s [{text:"\n",type:"text"},{text:"If it's your first time playing, check the tutorial. We recommend playing with at least ",color:"aqua",type:"text"},{text:"4 players",color:"dark_aqua",type:"text"},{text:".",color:"aqua",type:"text"},{text:"\n\n",type:"text"},{text:"Recommended settings:",color:"dark_aqua",type:"text"},{text:"\n",type:"text"},{text:" FOV: ",color:"aqua",type:"text"},{text:"90",bold:1b,color:"dark_aqua",type:"text"},{text:" | ",color:"blue",type:"text"},{text:" GUI Scale: ",color:"aqua",type:"text"},{text:"3",bold:1b,color:"dark_aqua",type:"text"},{text:" | ",color:"blue",type:"text"},{text:" Particles: ",color:"aqua",type:"text"},{text:"ALL",bold:1b,color:"dark_aqua",type:"text"},{text:"\n\n",type:"text"},{text:"  [",bold:1b,color:"dark_blue",type:"text"},{text:"DISCORD",bold:1b,color:"blue",type:"text",click_event:{action:"open_url",url:"https://discord.gg/2U5rxzNA6p"},hover_event:{action:"show_text",value:"Join our community, get notified about new updates and participate in our gaming sessions!"}},{text:"]",bold:1b,color:"dark_blue",type:"text"},{text:"  [",bold:1b,color:"gold",type:"text"},{text:"WIKI",bold:1b,color:"yellow",type:"text",click_event:{action:"open_url",url:"https://greavesoyl.wiki.gg"},hover_event:{action:"show_text",value:"Read the lore about characters and the world of Greavesoyl!"}},{text:"]",bold:1b,color:"gold",type:"text"},{text:"\n\n",type:"text"},{text:"===========================================",bold:1b,color:"dark_green",type:"text"}]

execute as @s run function main:char_scores_reset

tag @s add welcomemessage