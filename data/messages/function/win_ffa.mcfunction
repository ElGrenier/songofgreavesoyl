tellraw @a [{text:"====="},{selector:"@a[tag=win_need_to_edit]"},{text:"HAS WON ====="}]
title @a clear
title @a times 20 140 20
title @a subtitle {text:"Great job!",color:"green",type:"text"}
title @a title [{selector:"@a[tag=win_need_to_edit]"},{text:"HAS WON"}]

function messages:show_stats