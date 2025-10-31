# Tworzenie oltarzy, setup
summon minecraft:marker 47 11 -67 {CustomName:"Heart of The Mold (Purple Side)",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 47 11 -105 {CustomName:"Heart of The Mold (Yellow Side)",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 72 11 -86 {CustomName:"Morgue",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 20 16 -86 {CustomName:"Embalming Room",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker 47 19 -50 {Rotation:[180.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 47 19 -122 {Rotation:[0.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady

