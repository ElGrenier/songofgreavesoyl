# Tworzenie oltarzy, setup
summon minecraft:armor_stand 330 11 -321 {CustomName:"Entrance",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 330 11 -264 {CustomName:"Frozen Lake",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:armor_stand 309 24 -291 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 351 24 -291 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 330 37 -264 minecraft:air
setblock 330 37 -321 minecraft:air
