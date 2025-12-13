# This name is beautiful. Kisiel changed it ingame. Please flood him to return original one!

# Tworzenie oltarzy, setup
summon marker 566 11 -166 {CustomName:"Ramparts",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon marker 566 11 -196 {CustomName:"Forest",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon marker 566 16 -127 {CustomName:"Chamber",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon marker 540 15 -166 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon marker 592 15 -166 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 566 29 -166 minecraft:air
setblock 566 29 -196 minecraft:air
setblock 566 43 -127 minecraft:air