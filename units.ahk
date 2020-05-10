;
; Select Warrior
;
#If WinActive("Northgard")
+2::
    ClickImage("unit_warrior.png", true, true)
return

;
; Select Villager
;
#If WinActive("Northgard")
+q::
    ClickImage("unit_villager.png", true)
return

;
; Select Woodcutter
;
#If WinActive("Northgard")
+w::
    ClickImage("unit_woodcutter.png", true)
return

;
; Select Scout
;
#If WinActive("Northgard")
+z::
    ClickImage("unit_scout.png", true)
return