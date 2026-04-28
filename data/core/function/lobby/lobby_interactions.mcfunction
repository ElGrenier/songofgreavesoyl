#dialog show ExMonolith {type:"minecraft:multi_action",title:{text:"MrKisiel",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Project lead, character and game design, main builder, game balance and world lore.",bold:1b,color:"yellow",extra:[{text:"\n\nI wanted to make a team PVP map for years. I tried like 3 or 4 times, each project being scrapped. Finally in 2018 I grabbed a friend, said \"let's make a map, small project, basic kits\" and, well... here we are, 7 years, 4 comic volumes and and 70+ characters later.\nThanks for playing\nSongs of Greavesoyl!",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:{text:"My Other Maps",type:"text",color:"gold"},action:{type:"minecraft:open_url",url:"https://www.planetminecraft.com/member/mrkisiel/"}}]}

scoreboard players enable @a lobby_credits


execute as @e[tag=interaction_mrkisiel] on target run trigger lobby_credits set 1
dialog show @a[scores={lobby_credits=1}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"MrKisiel\n\n",bold:1b,color:"gold",extra:[{text:"Project lead, character and game design, building, game balance and world lore",bold:1b,color:"yellow"},{text:"\n\nI was once unironically told that removing half of the characters would somehow improve the map, so I took it to heart and added twice as much since then. \n\nThanks for playing\nSongs of Greavesoyl!",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:{text:"My Other Maps",type:"text",color:"gold"},action:{type:"minecraft:open_url",url:"https://www.planetminecraft.com/member/mrkisiel/"}}]}

execute as @e[tag=interaction_azeth] on target run trigger lobby_credits set 2
dialog show @a[scores={lobby_credits=2}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"AzethMeron\n\n",bold:1b,color:"gold",extra:[{text:"Legacy engine code",bold:1b,color:"yellow"},{text:"\n\nI was going through a very dark time when we started working on this map. This project and these people help me get back to light. I've never imagined how far SoG would go and I'm proud I could contribute to this.",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:{text:"Github",type:"text",color:"gold"},action:{type:"minecraft:open_url",url:"https://github.com/AzethMeron"}}]}

execute as @e[tag=interaction_grenier] on target run trigger lobby_credits set 3
dialog show @a[scores={lobby_credits=3}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Grenier\n\n",bold:1b,color:"gold",extra:[{text:"Engine code rework, additional building",bold:1b,color:"yellow"},{text:"\n\nI reworked and fully recoded the entire game system from the ground up. I enjoy tackling absurdly complex problems — mostly because I apparently like to suffer.",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_wav] on target run trigger lobby_credits set 4
dialog show @a[scores={lobby_credits=4}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"wavgudbye\n\n",bold:1b,color:"gold",extra:[{text:"Wav Mode, additional character design, shield point display, additional UI design, testing",bold:1b,color:"yellow"},{text:"\n\nI initially started making modifications to the game and adding characters on my own personal server as a way to kill time during quarantine. This caused me to rekindle my love for game design & discussion relating to it. I am looking forward to making even further contributions and sticking with the community in the future.",color:"white",bold:0b,italic:1b},{text:"\n\nDiscord:",color:"blue",bold:0b,italic:0b},{text:" wavgudbye",color:"aqua",bold:0b,italic:0b}]}},can_close_with_escape:1,pause:0b,actions:[{label:{text:"Other Maps",type:"text",color:"gold"},action:{type:"minecraft:open_url",url:"https://www.planetminecraft.com/member/wavgudbye/"}}]}

execute as @e[tag=interaction_exo] on target run trigger lobby_credits set 5
dialog show @a[scores={lobby_credits=5}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"exo\n\n",bold:1b,color:"gold",extra:[{text:"Custom character heads, testing",bold:1b,color:"yellow"},{text:"\n\nSoup",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:{text:"SoG skins",type:"text",color:"gold"},action:{type:"minecraft:open_url",url:"https://namemc.com/profile/Exonuts.1"}}]}

execute as @e[tag=interaction_jajo] on target run trigger lobby_credits set 6
dialog show @a[scores={lobby_credits=6}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Jajoman\n\n",bold:1b,color:"gold",extra:[{text:"Additional character design, building, PvE gamemode",bold:1b,color:"yellow"},{text:"\n\nHow do you like that Operator?! I PISSED ON THE ARCHIIIVEEE, you idiot!",color:"white",bold:0b,italic:1b},{text:"\n\nDiscord:",color:"blue",bold:0b,italic:0b},{text:" jajomenzczyzna",color:"aqua",bold:0b,italic:0b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_franklo] on target run trigger lobby_credits set 7
dialog show @a[scores={lobby_credits=7}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Franklo\n\n",bold:1b,color:"gold",extra:[{text:"Additional character design, custom character heads, building",bold:1b,color:"yellow"},{text:"\n\nI've come to make an announcement",color:"white",bold:0b,italic:1b},{text:"\n\nDiscord:",color:"blue",bold:0b,italic:0b},{text:" franklo784",color:"aqua",bold:0b,italic:0b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_mint] on target run trigger lobby_credits set 8
dialog show @a[scores={lobby_credits=8}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"galaxymint\n\n",bold:1b,color:"gold",extra:[{text:"Additinal character design, testing",bold:1b,color:"yellow"},{text:"\n\nI CAN’T MOOOOOOOOOOVEEEEEEE",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_quexal] on target run trigger lobby_credits set 9
dialog show @a[scores={lobby_credits=9}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Quexal\n\n",bold:1b,color:"gold",extra:[{text:"Additinal character design, testing",bold:1b,color:"yellow"},{text:"\n\nI have a question",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_habuba] on target run trigger lobby_credits set 10
dialog show @a[scores={lobby_credits=10}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Habuba\n\n",bold:1b,color:"gold",extra:[{text:"Additional character design, testing",bold:1b,color:"yellow"},{text:"\n\neither \"I HATE DOT\" or \"nerf mm\" or the epic sad serious thing\nyou can idk roll d3 for this",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}

execute as @e[tag=interaction_armero] on target run trigger lobby_credits set 11
dialog show @a[scores={lobby_credits=11}] {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Armero\n\n",bold:1b,color:"gold",extra:[{text:"Lobby rebuild",bold:1b,color:"yellow"},{text:"\n\nArmero's credits quote will be added as soon as Dubai gives him back to us",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}


# main lobby signs

execute as @e[tag=interaction_discord] on target run trigger lobby_credits set 101
dialog show @a[scores={lobby_credits=101}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Our Discord\n\n",bold:1b,color:"blue",extra:[{text:"Chat with the community, participate in tournaments, get notified about new content and stories!\n\nJoin Songs of Greavesoyl\nDiscord server:",color:"aqua",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:[{text:"[",type:"text",color:"dark_blue"},{text:"Link",type:"text",color:"blue"},{text:"]",type:"text",color:"dark_blue"}],action:{type:"minecraft:open_url",url:"https://discord.gg/2U5rxzNA6p"}}]}

execute as @e[tag=interaction_comic] on target run trigger lobby_credits set 102
dialog show @a[scores={lobby_credits=102}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Comic Series\n\n",bold:1b,color:"gold",extra:[{text:"Songs of Greavesoyl has a comic series, written and drawn by yours truly, telling the story of worldwide adventure, ancient curses, loss, love and hatred.\n\nRead it here:",color:"yellow",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:[{text:"[",type:"text",color:"dark_red"},{text:"Link",type:"text",color:"red"},{text:"]",type:"text",color:"dark_red"}],action:{type:"minecraft:open_url",url:"https://tapas.io/mrkisiel23/series"}}]}

execute as @e[tag=interaction_wiki] on target run trigger lobby_credits set 103
dialog show @a[scores={lobby_credits=103}] {type:"minecraft:multi_action",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"Official Wiki\n\n",bold:1b,color:"gold",extra:[{text:"You can read the stories and trivia about your favorite characters and maps on the official Wiki!",color:"yellow",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b,actions:[{label:[{text:"[",type:"text",color:"dark_blue"},{text:"Link",type:"text",color:"blue"},{text:"]",type:"text",color:"dark_blue"}],action:{type:"minecraft:open_url",url:"https://greavesoyl.wiki.gg/"}}]}

# stats interaction

execute as @e[tag=interaction_stats] on target run trigger lobby_credits set 200
execute as @a[scores={lobby_credits=200}] run function core:lobby/show_stats
#execute as @a[scores={lobby_credits=200}] run dialog show @s {type:"minecraft:notice",title:{text:" ",color:"gold",bold:1},body:{type:"minecraft:plain_message",contents:{text:"",extra:[{text:"=== Stats ===",bold:1b,color:"yellow"},{text:"\nKills: ",color:"yellow",type:"text"},{score:{name:"@s",objective:"GlobalKills"},color:"red",type:"score"},{text:"\n\n ",color:"white",bold:0b,italic:1b}]}},can_close_with_escape:1,pause:0b}




execute as @a[scores={lobby_credits=1..199}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
execute as @a[scores={lobby_credits=200}] at @s run playsound item.book.page_turn master @s ~ ~ ~ 1 1 1


execute as @e[type=interaction] run data remove entity @s interaction


scoreboard players set @a lobby_credits 0

