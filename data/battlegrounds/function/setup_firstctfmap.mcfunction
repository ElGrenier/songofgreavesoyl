# Tworzenie oltarzy, setup
function altars:setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon minecraft:armor_stand 399 18 -164 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 377 18 -262 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon minecraft:armor_stand 376 12.5 -139 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["immune","purpleflagspawn"]}
summon minecraft:armor_stand 400 12.5 -287 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["immune","yellowflagspawn"]}