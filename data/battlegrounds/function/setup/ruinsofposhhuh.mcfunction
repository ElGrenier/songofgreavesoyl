# Tworzenie oltarzy, setup
summon minecraft:marker 322.5 11.00 -201.7 {CustomName:"Ramp",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 282.5 11.00 -161.5 {CustomName:"Fountain",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 300.5 11.00 -179.5 {CustomName:"Yard",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker 276.5 18.00 -196.5 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 317.5 18.00 -155.5 {Rotation:[180.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 282 28 -162 minecraft:air destroy
setblock 300 28 -180 minecraft:air destroy
setblock 322 28 -202 minecraft:air destroy