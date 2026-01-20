
scoreboard players display numberformat @e[tag=Altars] score blank
scoreboard players display numberformat altars_list score blank
execute as @e[tag=Altars] if score @s Team matches 0 run team leave @s
scoreboard players display name altars_list score [{"text":" = ","color":dark_green},{"text":"Altars","color":green},{"text":" = ","color":dark_green}]


execute if score map_type settings matches 1 run scoreboard players set altars_list score -1
execute unless score map_type settings matches 1 run scoreboard players reset altars_list score
execute as @e[tag=Altars] unless score @s score matches ..-2 run scoreboard players set @s score -2

#template

scoreboard players display name @e[tag=Altars,name="XXX"] score "XXX"

#old woods
scoreboard players display name @e[tag=Altars,name="Cave"] score "Cave"
scoreboard players display name @e[tag=Altars,name="Ruins"] score "Ruins"
scoreboard players display name @e[tag=Altars,name="Hill"] score "Hill"
scoreboard players set @e[tag=Altars,name="Ruins"] score -3
scoreboard players set @e[tag=Altars,name="Cave"] score -4

#parasite chambers
scoreboard players display name @e[tag=Altars,name="Heart of The Mold (Purple Side)"] score "Heart of The Mold (PS)"
scoreboard players display name @e[tag=Altars,name="Heart of The Mold (Yellow Side)"] score "Heart of The Mold (YS)"
scoreboard players display name @e[tag=Altars,name="Morgue"] score "Morgue"
scoreboard players display name @e[tag=Altars,name="Embalming Room"] score "Embalming Room"
scoreboard players set @e[tag=Altars,name="Morgue"] score -3
scoreboard players set @e[tag=Altars,name="Embalming Room"] score -3

#snowguards fortress
scoreboard players display name @e[tag=Altars,name="Ramparts"] score "Ramparts"
scoreboard players display name @e[tag=Altars,name="Forest"] score "Forest"
scoreboard players display name @e[tag=Altars,name="Chamber"] score "Chamber"
scoreboard players set @e[tag=Altars,name="Ramparts"] score -3
scoreboard players set @e[tag=Altars,name="Forest"] score -4

#ruins of posuch
scoreboard players display name @e[tag=Altars,name="Ramp"] score "Ramp"
scoreboard players display name @e[tag=Altars,name="Fountain"] score "Fountain"
scoreboard players display name @e[tag=Altars,name="Yard"] score "Yard"
scoreboard players set @e[tag=Altars,name="Yard"] score -3
scoreboard players set @e[tag=Altars,name="Ramp"] score -4

#valley of bones
scoreboard players display name @e[tag=Altars,name="Lone Lane Cavern"] score "Lone Lane Cavern"
scoreboard players display name @e[tag=Altars,name="Sorog's Hill"] score "Sorog's Hill"
scoreboard players display name @e[tag=Altars,name="Forest of Bones"] score "Forest of Bones"
scoreboard players set @e[tag=Altars,name="Sorog's Hill"] score -3
scoreboard players set @e[tag=Altars,name="Forest of Bones"] score -4

#aranite mines
scoreboard players display name @e[tag=Altars,name="Nest"] score "Nest"
scoreboard players display name @e[tag=Altars,name="Tunnel"] score "Tunnel"
scoreboard players display name @e[tag=Altars,name="Ore Depot"] score "Ore Depot"
scoreboard players set @e[tag=Altars,name="Tunnel"] score -3
scoreboard players set @e[tag=Altars,name="Ore Depot"] score -4

#island 
scoreboard players display name @e[tag=Altars,name="Shore - Purple Side"] score "Shore - (PS)"
scoreboard players display name @e[tag=Altars,name="Shipwreck Shore"] score "Shipwreck Shore"
scoreboard players display name @e[tag=Altars,name="Shore - Yellow Side"] score "Shore - (YS)"
scoreboard players display name @e[tag=Altars,name="Valley - Purple Side"] score "Valley - (PS)"
scoreboard players display name @e[tag=Altars,name="Valley of Ruin"] score "Valley of Ruin"
scoreboard players display name @e[tag=Altars,name="Valley - Yellow Side"] score "Valley - (YS)"
scoreboard players display name @e[tag=Altars,name="Ruined City - Purple Side"] score "Ruined City - (PS)"
scoreboard players display name @e[tag=Altars,name="Grave of Sanac"] score "Grave of Sanac"
scoreboard players display name @e[tag=Altars,name="Ruined City - Yellow Side"] score "Ruined City - YS)"
scoreboard players set @e[tag=Altars,name="Shipwreck Shore"] score -3
scoreboard players set @e[tag=Altars,name="Shore - Purple Side"] score -4
scoreboard players set @e[tag=Altars,name="Valley - Yellow Side"] score -5
scoreboard players set @e[tag=Altars,name="Valley of Ruin"] score -6
scoreboard players set @e[tag=Altars,name="Valley - Purple Side"] score -7
scoreboard players set @e[tag=Altars,name="Ruined City - Yellow Side"] score -8
scoreboard players set @e[tag=Altars,name="Grave of Sanac"] score -9
scoreboard players set @e[tag=Altars,name="Ruined City - Purple Side"] score -10

#fossiled tomb
scoreboard players display name @e[tag=Altars,name="Descent"] score "Descent"
scoreboard players display name @e[tag=Altars,name="Town Square"] score "own Square"
scoreboard players display name @e[tag=Altars,name="Tomb of the Fossiled God"] score "Tomb of the Fossiled God"
scoreboard players set @e[tag=Altars,name="Town Square"] score -3
scoreboard players set @e[tag=Altars,name="Tomb of the Fossiled God"] score -4

#frozen burrow
scoreboard players display name @e[tag=Altars,name="Frozen Lake"] score "Frozen Lake"
scoreboard players display name @e[tag=Altars,name="Entrance"] score "Entrance"
