; #Include debug.ahk
; #Include update-check.ahk
#Include functions.ahk
#Include buildings.ahk
#Include units.ahk

global build_active := false

;
; Build
;
#If WinActive("Northgard")
~b::
~LButton::
    Sleep, 70
    game_size := getGameSize()
    ImageSearch, FoundX, FoundY, 0, 0, game_size[1], game_size[2], img/house.png
    build_active := !ErrorLevel
return

;
; Organize a Feast
;
#If WinActive("Northgard")
^f::
    ClickImage("feast.png")
return

;
; Upgrade Structure
;
#If WinActive("Northgard")
^r::
    ClickImage("upgrade.png")
return

;
; Destroy Structure
;
#If WinActive("Northgard")
^x::
    ClickImage("destroy.png")
return

;
; Colonize Land
;
#If WinActive("Northgard")
^c::
    ClickImage("colonize.png")
return

;
; Develop Land
;
#If WinActive("Northgard")
^d::
    ClickImage("develop.png")
return

;
; Close Open Menus / Settings
;
#If WinActive("Northgard")
~Esc::
	build_active := false
return