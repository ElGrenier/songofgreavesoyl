# Tworzenie oltarzy, setup
summon marker 568 11 -344 {CustomName:"Entrance",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon marker 568 11 -287 {CustomName:"Frozen Lake",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon marker 554 28 -314 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon marker 582 28 -314 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 568 40 -287 air
setblock 568 29 -344 air
