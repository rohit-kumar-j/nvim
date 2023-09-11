local banners                     = {}
local _, extras                   = pcall(require, "core.plugin_config.extra_dashboard")
local version                     = vim.version()

banners.default_banner            = {
  "            :h-                                  Nhy`               ",
  "           -mh.                           h.    `Ndho               ",
  "           hmh+                          oNm.   oNdhh               ",
  "          `Nmhd`                        /NNmd  /NNhhd               ",
  "          -NNhhy                      `hMNmmm`+NNdhhh               ",
  "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
  "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
  "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
  "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
  " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
  " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
  " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
  " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
  "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
  "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
  "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
  "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
  "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
  "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
  "       //+++//++++++////+++///::--                 .::::-------::   ",
  "       :/++++///////////++++//////.                -:/:----::../-   ",
  "       -/++++//++///+//////////////               .::::---:::-.+`   ",
  "       `////////////////////////////:.            --::-----...-/    ",
  "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
  "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
  "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
  "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
  "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
  "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
  "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
  "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
  "                        .-:mNdhh:.......--::::-`                    ",
  "                           yNh/..------..`                          ",
  "                                                                    ",
  "N E O V I M - v " .. version.major .. "." .. version.minor,
  "",
}
banners.neovim                    = {
  [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
  [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
  [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
  [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
  [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
  [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
}
banners.bison_head                = {
  [[           .                                                      .            ]],
  [[         .n                   .                 .                  n.          ]],
  [[   .   .dP                  dP                   9b                 9b.    .   ]],
  [[  4    qXb         .       dX                     Xb       .        dXp     t  ]],
  [[ dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb ]],
  [[ 9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP ]],
  [[  9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP  ]],
  [[   `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'   ]],
  [[     `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'     ]],
  [[         ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~         ]],
  [[                         )b.  .dbo.dP'`v'`9b.odb.  .dX(                        ]],
  [[                       ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.                       ]],
  [[                      dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb                      ]],
  [[                     dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb                     ]],
  [[                     9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP                     ]],
  [[                      `'      9XXXXXX(   )XXXXXXP      `'                      ]],
  [[                               XXXX X.`v'.X XXXX                               ]],
  [[                               XP^X'`b   d'`X^XX                               ]],
  [[                               X. 9  `   '  P )X                               ]],
  [[                               `b  `       '  d'                               ]],
  [[                                `             '                                ]]
}
banners.doom                      = {
  [[ =================     ===============     ===============   ========  ======== ]],
  [[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
  [[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
  [[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
  [[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
  [[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
  [[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
  [[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
  [[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
  [[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
  [[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
  [[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
  [[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
  [[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
  [[ ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   || ]],
  [[ ||.=='    _-'                                                     `' |  /==.|| ]],
  [[ =='    _-'                        N E O V I M                         \/   `== ]],
  [[ \   _-'                                                                `-_   / ]],
  [[  `'' ]]
}
banners.pikachu1                  = {
  [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
  [[⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿]],
  [[⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿]],
  [[⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿]],
  [[⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿]],
  [[⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿]],
  [[⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿]],
  [[⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿]],
  [[⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿]],
  [[⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿]],
}
banners.neo_land                  = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣄⣀⣆⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⢛⣻⣿⠳⣽⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣼⣿⣿N⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⣰⣿⣿⣿⡿⣻⢟⣼⣿⣿⠟⣩E⣿⣿⣿⣿⣮⣿⣆⡀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⣰⣿⣿⢋⡿⠑⠋⣾⣿⣿⣇⠳⢿O⣿⠹⠿⢿⣿⣻⣿⡿⠋⠀⠀⠀]],
  [[⠀⠀⠀⣰⣟⡽⠷⠋⠀⠀⠀⠇⣿⣿⣿⣿LAND⣶⡄⠾⠛⠙⣷⣄⡀⠀⠀]],
  [[⠀⢀⡾⠛⠉⠀⠀⠀⠀⠀⠀⠀⠻⡹⣿⡿⢿⣿⣿⣿⣿⣿⣿⣶⣆⡘⠷⣉⠆⠀]],
  [[⠐⠉⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⣶⣧⣝⣷⣄⠈⠙⢿⡏⢻⢻⢻⣿⣷⡀⠈⠑⠄]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠋⠀⠀⠉⠛⢿⣷⣄⡀⠀⠹⠀⠀⣼⣿⡟⡇⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣧⡀⠀⠀⢀⡠⣬⣿⣿⣿⣶⣿⣿⣿⣿⠇⠃⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⢷⣶⣦⣬⣿⣦⣌⠭⠿⠟⠋⢀⠏⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⠛⠛⠿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠶⠄⠀⠀⠀⠀⠀  ]]
}
banners.bigbrain                  = {
  [[  ⠀                                                 ]],
  [[ ⠀⠀            ⣞⢽⢪⢣⢣⢣⢫⡺⡵⣝⡮⣗⢷⢽⢽⢽⣮⡷⡽⣜⣜⢮⢺⣜⢷⢽⢝⡽⣝        ]],
  [[  ⠀           ⠸⡸⠜⠕⠕⠁⢁⢇⢏⢽⢺⣪⡳⡝⣎⣏⢯⢞⡿⣟⣷⣳⢯⡷⣽⢽⢯⣳⣫⠇        ]],
  [[ ⠀⠀            ⠀⢀⢀⢄⢬⢪⡪⡎⣆⡈⠚⠜⠕⠇⠗⠝⢕⢯⢫⣞⣯⣿⣻⡽⣏⢗⣗⠏        ⠀]],
  [[ ⠀      ⠀      ⠪⡪⡪⣪⢪⢺⢸⢢⢓⢆⢤⢀⠀⠀⠀⠀⠈⢊⢞⡾⣿⡯⣏⢮⠷⠁⠀        ⠀ ]],
  [[ ⠀         ⠀   ⠀⠀⠈⠊⠆⡃⠕⢕⢇⢇⢇⢇⢇⢏⢎⢎⢆⢄⠀⢑⣽⣿⢝⠲⠉⠀⠀⠀        ⠀]],
  [[ ⠀          ⠀⠀⠀  ⠀⠀⡿⠂⠠⠀⡇⢇⠕⢈⣀⠀⠁⠡⠣⡣⡫⣂⣿⠯⢪⠰⠂⠀⠀⠀⠀        ]],
  [[ ⠀⠀            ⠀⠀⠀⡦⡙⡂⢀⢤⢣⠣⡈⣾⡃⠠⠄⠀⡄⢱⣌⣶⢏⢊⠂⠀⠀⠀⠀⠀⠀        ]],
  [[ ⠀  ⠀          ⠀⠀⠀⢝⡲⣜⡮⡏⢎⢌⢂⠙⠢⠐⢀⢘⢵⣽⣿⡿⠁⠁⠀⠀⠀⠀⠀⠀        ⠀]],
  [[ ⠀   ⠀         ⠀⠀⠀⠨⣺⡺⡕⡕⡱⡑⡆⡕⡅⡕⡜⡼⢽⡻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
  [[ ⠀   ⠀         ⠀⠀⠀⣼⣳⣫⣾⣵⣗⡵⡱⡡⢣⢑⢕⢜⢕⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
  [[ ⠀    ⠀        ⠀⠀⣴⣿⣾⣿⣿⣿⡿⡽⡑⢌⠪⡢⡣⣣⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
  [[ ⠀     ⠀       ⠀⠀⡟⡾⣿⢿⢿⢵⣽⣾⣼⣘⢸⢸⣞⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
  [[ ⠀    ⠀        ⠀⠀⠀⠁⠇⠡⠩⡫⢿⣝⡻⡮⣒⢽⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]]
}
banners.neovim_question_mark      = {
  [[  ⠀    _   _                     _            ___     ]],
  [[  ⠀   | \ | |                   (_)          |__ \    ]],
  [[  ⠀   |  \| |  ___   ___ __   __ _  _ __ ___    ) |   ]],
  [[  ⠀   | . ` | / _ \ / _ \\ \ / /| || '_ ` _ \  / /    ]],
  [[  ⠀   | |\  ||  __/| (_) |\ V / | || | | | | ||_|     ]],
  [[  ⠀   |_| \_| \___| \___/  \_/  |_||_| |_| |_|(_)     ]],
  [[  ⠀                                                   ]],
  [[______________________________________________________]],
  [[  ⠀                                                   ]],
  [[  ⠀                                                   ]],
}
banners.mr_inc                    = {
  [[  ⠀                      ]],
  [[⠀⠀⠀⠀⠀⡰⢂⣾⠿⠛⠒⠚⠛⠃⠺⢶⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⢠⡣⠋⠁⠀⠀⠀⠀⠀⢀⡐⠒⢙⣄⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⡘⠀⠀⠀⠀⠀⠀⢄⠉⠀⠐⠀⠀⠙⢦⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⣾⠁⠀⠀⠄⠂⢈⣠⠎⠀⠀⣸⣿⡿⠓⢬⡇⠀⠀⠀⠀⠀]],
  [[⠀⠀⢸⡟⠀⠔⣁⣤⣶⣿⠋⢰⠀⠀⣿⡟⠻⣦⠀⢳⠀⠀⠀⠀⠀]],
  [[⠀⠀⣷⡇⢠⣾⢟⢭⣭⡭⡄⠀⡆⠀⣿⣷⣶⠺⡆⢸⡄⠀⠀⠀⠀]],
  [[⠀⠀⠇⡇⠛⠡⣑⣈⣛⠝⢁⡀⠇⠀⣿⡿⠛⠒⣡⠇⣧⣀⠀⠀⠀]],
  [[⠀⠀⢠⠁⠈⠐⠤⠄⠀⣠⢸⠈⠢⠀⣿⡇⠀⠀⠠⠚⣿⣿⠀⠀⠀]],
  [[⡄⠀⢾⠀⡆⠠⣴⠞⠯⡀⠈⠙⠲⣶⣿⡇⠑⣦⡄⠀⣿⣿⠀⠀⠀]],
  [[⠈⠺⡮⠀⢡⠀⠀⠀⠀⠀⠁⠐⠒⠒⠛⠃⠈⠛⠇⠀⡏⡏⠀⠀⠀]],
  [[⠀⢰⠁⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⢷⠀⠀⠀]],
  [[⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠀⢸⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠀]],
  [[⠀⠀⢣⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠸⡳⡀⠀]],
  [[⠀⠀⠀⠑⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣯⣼⡇⠑⣄]],
}
banners.chad                      = {
  [[                              ]],
  [[⣿⣿⣿⣿⡏⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿]],
  [[⣿⣿⣿⢏⣴⣿⣷⠀⠀⠀⠀⠀⢾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿]],
  [[⣿⣿⣟⣾⣿⡟⠁⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣷⢢⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
  [[⣿⣿⣿⣿⣟⠀⡴⠄⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⣿]],
  [[⣿⣿⣿⠟⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⢴⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿]],
  [[⣿⣁⡀⠀⠀⢰⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡄⠀⣴⣶⣿⡄⣿]],
  [[⣿⡋⠀⠀⠀⠎⢸⣿⡆⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠗⢘⣿⣟⠛⠿⣼]],
  [[⣿⣿⠋⢀⡌⢰⣿⡿⢿⡀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣧⢀⣼]],
  [[⣿⣿⣷⢻⠄⠘⠛⠋⠛⠃⠀⠀⠀⠀⠀⢿⣧⠈⠉⠙⠛⠋⠀⠀⠀⣿⣿⣿⣿⣿]],
  [[⣿⣿⣧⠀⠈⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⢀⢃⠀⠀⢸⣿⣿⣿⣿]],
  [[⣿⣿⡿⠀⠴⢗⣠⣤⣴⡶⠶⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡸⠀⣿⣿⣿⣿]],
  [[⣿⣿⣿⡀⢠⣾⣿⠏⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠉⠀⣿⣿⣿⣿]],
  [[⣿⣿⣿⣧⠈⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⡄⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
  [[⣿⣿⣿⣿⣿⣦⣄⣀⣀⣀⣀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
}
banners.neovim_lite               = {
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  [[                                                 ]],
}
banners.op_man1                   = {
  [[⠀⠀⠀⠀⣠⣶⡾⠏⠉⠙⠳⢦⡀⠀⠀⠀⢠⠞⠉⠙⠲⡀⠀]],
  [[⠀⠀⠀⣴⠿⠏⠀⠀⠀⠀⠀⠀⢳⡀⠀⡏⠀⠀⠀⠀⠀⢷ ]],
  [[⠀⠀⢠⣟⣋⡀⢀⣀⣀⡀⠀⣀⡀⣧⠀⢸⠀⠀⠀⠀⠀ ⡇]],
  [[⠀⠀⢸⣯⡭⠁⠸⣛⣟⠆⡴⣻⡲⣿⠀⣸⠀⠀OK⠀ ⡇]],
  [[⠀⠀⣟⣿⡭⠀⠀⠀⠀⠀⢱⠀⠀⣿⠀⢹⠀⠀⠀⠀⠀ ⡇]],
  [[⠀⠀⠙⢿⣯⠄⠀⠀⠀⢀⡀⠀⠀⡿⠀⠀⡇⠀⠀⠀⠀⡼ ]],
  [[⠀⠀⠀⠀⠹⣶⠆⠀⠀⠀⠀⠀⡴⠃⠀⠀⠘⠤⣄⣠⠞ ⠀]],
  [[⠀⠀⠀⠀⠀⢸⣷⡦⢤⡤⢤⣞⣁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⢀⣤⣴⣿⣏⠁⠀⠀⠸⣏⢯⣷⣖⣦⡀⠀⠀⠀⠀⠀⠀]],
  [[⢀⣾⣽⣿⣿⣿⣿⠛⢲⣶⣾⢉⡷⣿⣿⠵⣿⠀⠀⠀⠀⠀⠀]],
  [[⣼⣿⠍⠉⣿⡭⠉⠙⢺⣇⣼⡏⠀⠀⠀⣄⢸⠀⠀⠀⠀⠀⠀]],
  [[⣿⣿⣧⣀⣿………⣀⣰⣏⣘⣆⣀⠀⠀       ]],
}
banners.squidward                 = {
  [[        .--'''''''''--.      ]],
  [[     .'      .---.      '.   ]],
  [[    /    .-----------.    \  ]],
  [[   /        .-----.        \ ]],
  [[   |       .-.   .-.       | ]],
  [[   |      /   \ /   \      | ]],
  [[    \    | .-. | .-. |    /  ]],
  [[     '-._| | | | | | |_.-'   ]],
  [[         | '-' | '-' |       ]],
  [[          \___/ \___/        ]],
  [[       _.-'  /   \  `-._     ]],
  [[     .' _.--|     |--._ '.   ]],
  [[     ' _...-|     |-..._ '   ]],
  [[            |     |          ]],
  [[            '.___.'          ]]
}
banners.brothers                  = {
  [[          _          __________                              _,             ]],
  [[      _.-(_)._     ."          ".      .--""--.          _.-{__}-._         ]],
  [[    .'________'.   | .--------. |    .'        '.      .:-'`____`'-:.       ]],
  [[   [____________] /` |________| `\  /   .'``'.   \    /_.-"`_  _`"-._\      ]],
  [[   /  / .\/. \  \|  / / .\/. \ \  ||  .'/.\/.\'.  |  /`   / .\/. \   `\     ]],
  [[   |  \__/\__/  |\_/  \__/\__/  \_/|  : |_/\_| ;  |  |    \__/\__/    |     ]],
  [[   \            /  \            /   \ '.\    /.' / .-\                /-.   ]],
  [[   /'._  --  _.'\  /'._  --  _.'\   /'. `'--'` .'\/   '._-.__--__.-_.'   \  ]],
  [[  /_   `""""`   _\/_   `""""`   _\ /_  `-./\.-'  _\'.    `""""""""`    .'`\ ]],
  [[ (__/    '|    \ _)_|           |_)_/            \__)|        '       |   | ]],
  [[   |_____'|_____|   \__________/   |              | `_________'________`;-' ]],
  [[    '----------'    '----------'   '--------------'`--------------------`   ]],
}
banners.shrek_logo                = {
  [[ ⢀⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⢰⣤⣿⣄⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⣀⣾⣤⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠈⣻⣿⣾⣿⠿⠛⠛⠻⢿⣿⣿⡟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⢸⣿⣿⣿⣯⡀⠀⠀⠀⠀⢻⣿⠀⢠⣤⣤⣤⣤⡄⠀⣠⣤⣤⣤⣤⣀⣤⣤⣤⣤⣤⣤⣄⣀⠀⠀⠀⣀⣤⣤⣤⣀⠀⢀⣤⣤⣤⣤⡀⢀⣀⣀⣀⣀⠀ ]],
  [[ ⠀⠀⢸⣿⣿⣿⣿⣿⣶⣦⣤⣀⡀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⡇⠀⢸⣿⣿⣿⠀⠙⣿⣿⡇⣠⣾⣿⠋⠉⠹⣿⣿⡄⣿⣿⣿⡏⠀⣠⣾⡿⠋⠀⠀ ]],
  [[ ⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⣿⣿⣿⣧⣀⣀⣀⣿⣿⣿⡇⠀⢸⣿⣿⣿⣀⣠⣿⣿⠇⣿⣿⣿⠶⠶⠶⠿⠿⠇⣿⣿⣿⣧⣾⣿⡉⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⣤⣤⠀⠀⠈⠉⠛⠿⣿⣿⣿⣿⡇⣿⣿⣿⡏⠉⠉⠉⣿⣿⣿⡇⠀⢸⣿⣿⣿⠛⢿⣿⣦⠀⣿⣿⣿⡀⠀⠀⠀⣀⡀⣿⣿⣿⡏⢻⣿⣷⣄⠀⠀⠀ ]],
  [[ ⠀⠀⠀⣿⣿⣄⠀⠀⠀⠀⠀⣿⣿⣿⣿⠇⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⡇⠀⢸⣿⣿⣿⠀⠈⢿⣿⣧⠘⢿⣿⣿⣶⣶⣾⠟⠁⣿⣿⣿⡇⠀⠹⣿⣿⣆⠀⠀ ]],
  [[ ⠀⠀⠀⠛⠿⠿⣷⣤⣤⣤⣾⡿⠿⠛⠁⠐⠛⠛⠛⠛⠂⠀⠚⠛⠛⠛⠛⠀⠚⠛⠛⠛⠂⠀⠈⠛⠛⠓⠀⠈⠉⠉⠉⠀⠀⠐⠛⠛⠛⠛⠂⠀⢹⣿⣿⣷⣄ ]],
}
banners.shrek_face1               = {
  [[ ⢀⡴⠑⡄⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠸⡇⠀⠿⡀⠀⠀⠀⣀⡴⢿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠑⢄⣠⠾⠁⣀⣄⡈⠙⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⢀⡀⠁⠀⠀⠈⠙⠛⠂⠈⣿⣿⣿⣿⣿⠿⡿⢿⣆⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⢀⡾⣁⣀⠀⠴⠂⠙⣗⡀⠀⢻⣿⣿⠭⢤⣴⣦⣤⣹⠀⠀⠀⢀⢴⣶⣆ ]],
  [[ ⠀⠀⢀⣾⣿⣿⣿⣷⣮⣽⣾⣿⣥⣴⣿⣿⡿⢂⠔⢚⡿⢿⣿⣦⣴⣾⠁⠸⣼⡿ ]],
  [[ ⠀⢀⡞⠁⠙⠻⠿⠟⠉⠀⠛⢹⣿⣿⣿⣿⣿⣌⢤⣼⣿⣾⣿⡟⠉⠀⠀⠀⠀⠀ ]],
  [[ ⠀⣾⣷⣶⠇⠀⠀⣤⣄⣀⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠉⠈⠉⠀⠀⢦⡈⢻⣿⣿⣿⣶⣶⣶⣶⣤⣽⡹⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠉⠲⣽⡻⢿⣿⣿⣿⣿⣿⣿⣷⣜⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣶⣮⣭⣽⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠿⠿⠛⠉             ]],
}
banners.halflife                  = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀]],
  [[⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀]],
  [[⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀]],
  [[⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇]],
  [[⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿]],
  [[⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿]],
  [[⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿]],
  [[⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇]],
  [[⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀]],
  [[⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀]],
  [[⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]]
}
banners.robojax1                  = {
  [[ ____                __                 _____     ______      __   __      ]],
  [[/\  _`\             /\ \               /\___ \   /\  _  \    /\ \ /\ \     ]],
  [[\ \ \L\ \     ___   \ \ \____    ___   \/__/\ \  \ \ \L\ \   \ `\`\/'/'    ]],
  [[ \ \ ,  /    / __`\  \ \ '__`\  / __`\    _\ \ \  \ \  __ \   `\/ > <      ]],
  [[  \ \ \\ \  /\ \L\ \  \ \ \L\ \/\ \L\ \  /\ \_\ \  \ \ \/\ \     \/'/\`\   ]],
  [[   \ \_\ \_\\ \____/   \ \_,__/\ \____/  \ \____/   \ \_\ \_\    /\_\\ \_\ ]],
  [[    \/_/\/ / \/___/     \/___/  \/___/    \/___/     \/_/\/_/    \/_/ \/_/ ]],
  [[                                                                           ]],

}
banners.robojax2                  = {
  [[                                     bbbbbbbb                                                                                                        ]],
  [[RRRRRRRRRRRRRRRRR                    b::::::b                                       JJJJJJJJJJJ               AAA               XXXXXXX       XXXXXXX]],
  [[R::::::::::::::::R                   b::::::b                                       J:::::::::J              A:::A              X:::::X       X:::::X]],
  [[R::::::RRRRRR:::::R                  b::::::b                                       J:::::::::J             A:::::A             X:::::X       X:::::X]],
  [[RR:::::R     R:::::R                  b:::::b                                       JJ:::::::JJ            A:::::::A            X::::::X     X::::::X]],
  [[  R::::R     R:::::R   ooooooooooo    b:::::bbbbbbbbb       ooooooooooo               J:::::J             A:::::::::A           XXX:::::X   X:::::XXX]],
  [[  R::::R     R:::::R oo:::::::::::oo  b::::::::::::::bb   oo:::::::::::oo             J:::::J            A:::::A:::::A             X:::::X X:::::X   ]],
  [[  R::::RRRRRR:::::R o:::::::::::::::o b::::::::::::::::b o:::::::::::::::o            J:::::J           A:::::A A:::::A             X:::::X:::::X    ]],
  [[  R:::::::::::::RR  o:::::ooooo:::::o b:::::bbbbb:::::::bo:::::ooooo:::::o            J:::::j          A:::::A   A:::::A             X:::::::::X     ]],
  [[  R::::RRRRRR:::::R o::::o     o::::o b:::::b    b::::::bo::::o     o::::o            J:::::J         A:::::A     A:::::A            X:::::::::X     ]],
  [[  R::::R     R:::::Ro::::o     o::::o b:::::b     b:::::bo::::o     o::::oJJJJJJJ     J:::::J        A:::::AAAAAAAAA:::::A          X:::::X:::::X    ]],
  [[  R::::R     R:::::Ro::::o     o::::o b:::::b     b:::::bo::::o     o::::oJ:::::J     J:::::J       A:::::::::::::::::::::A        X:::::X X:::::X   ]],
  [[  R::::R     R:::::Ro::::o     o::::o b:::::b     b:::::bo::::o     o::::oJ::::::J   J::::::J      A:::::AAAAAAAAAAAAA:::::A    XXX:::::X   X:::::XXX]],
  [[RR:::::R     R:::::Ro:::::ooooo:::::o b:::::bbbbbb::::::bo:::::ooooo:::::oJ:::::::JJJ:::::::J     A:::::A             A:::::A   X::::::X     X::::::X]],
  [[R::::::R     R:::::Ro:::::::::::::::o b::::::::::::::::b o:::::::::::::::o JJ:::::::::::::JJ     A:::::A               A:::::A  X:::::X       X:::::X]],
  [[R::::::R     R:::::R oo:::::::::::oo  b:::::::::::::::b   oo:::::::::::oo    JJ:::::::::JJ      A:::::A                 A:::::A X:::::X       X:::::X]],
  [[RRRRRRRR     RRRRRRR   ooooooooooo    bbbbbbbbbbbbbbbb      ooooooooooo        JJJJJJJJJ       AAAAAAA                   AAAAAAAXXXXXXX       XXXXXXX]],
  [[                                                                                                                                                     ]]
}
banners.uno_reverse               = {
  [[⠐⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠂]],
  [[⠄⠄⣰⣾⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣆⠄⠄]],
  [[⠄⠄⣿⣿⣿⡿⠋⠄⡀⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⣉⣉⣉⡉⠙⠻⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⣿⣇⠔⠈⣿⣿⣿⣿⣿⡿⠛⢉⣤⣶⣾⣿⣿⣿⣿⣿⣿⣦⡀⠹⠄⠄]],
  [[⠄⠄⣿⣿⠃⠄⢠⣾⣿⣿⣿⠟⢁⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠄⠄]],
  [[⠄⠄⣿⣿⣿⣿⣿⣿⣿⠟⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠄⠄]],
  [[⠄⠄⣿⣿⣿⣿⣿⡟⠁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⣿⣿⠋⢠⣾⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⡿⠁⣰⣿⣿⣿⣿⣿⣿⣿⣿⠗⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄]],
  [[⠄⠄⣿⡿⠁⣼⣿⣿⣿⣿⣿⣿⡿⠋⠄⠄⠄⣠⣄⢰⣿⣿⣿⣿⣿⣿⣿⠃⠄⠄]],
  [[⠄⠄⡿⠁⣼⣿⣿⣿⣿⣿⣿⣿⡇⠄⢀⡴⠚⢿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢠⠄⠄]],
  [[⠄⠄⠃⢰⣿⣿⣿⣿⣿⣿⡿⣿⣿⠴⠋⠄⠄⢸⣿⣿⣿⣿⣿⣿⣿⡟⢀⣾⠄⠄]],
  [[⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⠃⠈⠁⠄⠄⢀⣴⣿⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⠄⠄]],
  [[⠄⠄⢸⣿⣿⣿⣿⣿⣿⣿⠄⠄⠄⠄⢶⣿⣿⣿⣿⣿⣿⣿⣿⠏⢀⣾⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⠋⣠⣿⣿⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⣼⣿⣿⣿⣿⣿⠄⠄]],
  [[⠄⠄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⣴⣿⣿⣿⣿⣿⣿⣿⠄⠄]],
  [[⠄⠄⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⢁⣴⣿⣿⣿⣿⠗⠄⠄⣿⣿⠄⠄]],
  [[⠄⠄⣆⠈⠻⢿⣿⣿⣿⣿⣿⣿⠿⠛⣉⣤⣾⣿⣿⣿⣿⣿⣇⠠⠺⣷⣿⣿⠄⠄]],
  [[⠄⠄⣿⣿⣦⣄⣈⣉⣉⣉⣡⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⠉⠁⣀⣼⣿⣿⣿⠄⠄]],
  [[⠄⠄⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⣿⡿⠟⠄⠄]],
  [[⠠⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄]]
}

vim.g.dashboard_default_executive = "telescope"

local home                        = os.getenv("HOME")

local my_banner                   = banners.neovim
-- local my_banner                   = extras.custom_banner2

if my_banner == nil then
  my_banner = banners.default_banner
end
return {
  "glepnir/dashboard-nvim",
  priority = 1000,
  -- event = "VimEnter",
  lazy = false,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  config = function()
    local db = require("dashboard").setup({
      theme = "hyper",
      config = {
        header = my_banner,
        -- week_header = {
        --      enable = true,
        -- },
        footer = function()
          return {
            "type  :help<Enter>  or  <F1>  for on-line help,  <F2>  news changelog",
            "Startup time: " .. require "lazy".stats().startuptime .. " ms"
          }
        end,
        shortcut = {
          {
            desc = " Lazy Debug",
            group = "@property",
            action = "Lazy debug",
            key = "d"
          },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Mason",
            group = "Label",
            action = "Mason",
            key = "m",
          },
          {
            desc = " Terminal",
            group = "DiagnosticHint",
            action = "ToggleTerm",
            key = "t",
          },
          {
            desc = " Lazy Sync",
            group = "Number",
            action = "Lazy sync",
            key = "s",
          },
        },
      },
    })
    vim.cmd([[:Dashboard]])
  end
}
