getGameSize() {
	WinGetPos, , , game_width, game_height, Northgard
	
	WinGet, style, Style, Northgard
	has_border := (style & 0x800000) ? 1 : 0
	title_bar_height := 0
	window_border_width := 0
	window_border_height := 0
	
	if (has_border) {
		SysGet, title_bar_height, 31
		SysGet, window_border_width, 32
		SysGet, window_border_height, 33
	
		title_bar_height++
		
		game_width -= window_border_width * 2
		game_height -= (window_border_height * 2) + title_bar_height
	}
	
	return [game_width, game_height, window_border_width, window_border_height, title_bar_height]
}

ClickImage(image, restricted=false, right_click=false) {
	game_size := getGameSize()

	SearchX = 0
	if restricted
		SearchX = game_size[1] - 300

    ImageSearch, FoundX, FoundY, SearchX, 0, game_size[1], game_size[2], *2 *TransFF00FF img/%image%
    if !ErrorLevel
        ClickCoords(FoundX, FoundY, right_click)
    
	return !ErrorLevel
}

ClickCoords(x, y, right_click=false) {
	MouseGetPos, mX, mY  ; Save old position
	MouseMove, x, y, 0

	if right_click {
		Send {RButton down}
		Sleep, 10
		Send {RButton up}
	} else {
		Send {LButton down}
		Sleep, 10
		Send {LButton up}
	}

	MouseMove, %mX%, %mY%, 0  ; Return cursor to old position
}