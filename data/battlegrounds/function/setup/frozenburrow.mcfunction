# Tworzenie oltarzy, setup
summon minecraft:marker 330 11 -321 {CustomName:"Entrance",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 330 11 -264 {CustomName:"Frozen Lake",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker 309 24 -291 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 351 24 -291 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 330 37 -264 minecraft:air
setblock 330 37 -321 minecraft:air
