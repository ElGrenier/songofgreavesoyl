# Tworzenie oltarzy, setup
function altars:setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon minecraft:armor_stand -95 17 58 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 3 17 58 {Rotation:[90.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon minecraft:armor_stand -113 12.5 58 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["immune","purpleflagspawn"]}
summon minecraft:armor_stand 21 12.5 58 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,Tags:["immune","yellowflagspawn"]}