# Tworzenie oltarzy, setup
summon minecraft:armor_stand 244.48 13.00 -64.44 {CustomName:"Purple Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 210.50 13.00 -92.50 {CustomName:"Yellow Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 227.36 22.00 -78.48 {CustomName:"Center",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:armor_stand 259.46 19.00 -78.46 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 195.35 19.00 -78.50 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 244 52 -65 minecraft:air
setblock 227 52 -79 minecraft:air
setblock 210 52 -93 minecraft:air
