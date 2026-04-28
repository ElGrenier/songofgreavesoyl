# Tworzenie oltarzy, setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon marker -95 17 58 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon marker 3 17 58 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon marker -113 12.5 58 {Invulnerable:1b,NoGravity:1b,Tags:["immune","purpleflagspawn"]}
summon marker 21 12.5 58 {Invulnerable:1b,NoGravity:1b,Tags:["immune","yellowflagspawn"]}
