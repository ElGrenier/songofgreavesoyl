# This name is beautiful. Kisiel changed it ingame. Please flood him to return original one!

# Tworzenie oltarzy, setup
summon minecraft:marker 324.5 11.00 -59.5 {CustomName:"Ramparts",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 324.5 11.00 -89.5 {CustomName:"Forest",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 324.5 16.00 -20.5 {CustomName:"Chamber",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker 350.5 15.0 -59.5 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 298.5 15.0 -59.5 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 324 29 -90 minecraft:air
setblock 324 29 -60 minecraft:air
setblock 324 43 -21 minecraft:air