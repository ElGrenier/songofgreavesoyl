# Tworzenie oltarzy, setup
summon marker 132 14 -559 {CustomName:"Descent",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon marker 174 11 -601 {CustomName:"Town Square",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon marker 216 11 -643 {CustomName:"Tomb of the Fossiled God",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon marker 122 16 -653 {Rotation:[-45.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon marker 226 16 -549 {Rotation:[135.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 174 38 -601 air
setblock 216 38 -643 air
setblock 132 38 -560 air
