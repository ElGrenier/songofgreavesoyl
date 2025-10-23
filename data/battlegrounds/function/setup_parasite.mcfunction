# Tworzenie oltarzy, setup
summon minecraft:armor_stand 47 11 -67 {CustomName:"Heart of The Mold (Purple Side)",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 47 11 -105 {CustomName:"Heart of The Mold (Yellow Side)",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 72 11 -86 {CustomName:"Morgue",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 20 16 -86 {CustomName:"Embalming Room",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:armor_stand 47 19 -50 {Rotation:[180.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 47 19 -122 {Rotation:[0.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady

