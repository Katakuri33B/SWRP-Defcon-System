green = true

net.Receive("GetStatusGreen", function(len ,ply)
    if green then return end
    green = true
    red = false
    orange = false
    white = false
    surface.PlaySound("Resource/warning.wav")
end)

net.Receive("GetStatusRed", function(len, ply)
    if red then return end
    green = false
    red = true
    orange = false
    white = false 
    surface.PlaySound("Resource/warning.wav")
end)

net.Receive("GetStatusOrange", function(len, ply)
    if orange then return end
    green = false
    red = false
    orange = true 
    white = false 
    surface.PlaySound("Resource/warning.wav")
end)

net.Receive("GetStatusWhite", function(len, ply)
    if white then return end
    green = false
    red = false
    orange = false
    white = true
    surface.PlaySound("Resource/warning.wav")
end)

surface.CreateFont( "DefconFontNormal", {
	font = "Montserrat",
	size = 20,
	weight = 500,
} )

surface.CreateFont( "DefconFontSmall", {
	font = "Montserrat",
	size = 13,
	weight = 500,
} )

surface.SetFont("DefconFontNormal")
green_text = surface.GetTextSize(GREEN_TXT)
red_text = surface.GetTextSize(RED_TXT)
orange_text = surface.GetTextSize(ORANGE_TXT)
white_text = surface.GetTextSize(WHITE_TXT)

hook.Add("HUDPaint", "Green", function()
    if green then
        draw.RoundedBox(7.5, ScrW() * .84, ScrH()  * 0 + 50, green_text+25+25, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .84, ScrH()  * 0 + 95, green_text+25+25, 5, Color(25, 254, 25, 200), false, false, true, true)
        draw.SimpleText(GREEN_TXT, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 70, Color(25,250,25), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        draw.RoundedBox(7.5, ScrW() * .80, ScrH()  * 0 + 105, 350, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .80, ScrH()  * 0 + 150, 350, 5, Color(25, 254, 25, 200), false, false, true, true)
        draw.SimpleText(GREEN_DESC, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 130, Color(25,250,25), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    if red then
        draw.RoundedBox(7.5, ScrW() * .84, ScrH()  * 0 + 50, red_text+25+25, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .84, ScrH()  * 0 + 95, red_text+25+25, 5, Color(255, 25, 25, 200), false, false, true, true)
        draw.SimpleText(RED_TXT, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 70, Color(255,25,25), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        draw.RoundedBox(7.5, ScrW() * .80, ScrH()  * 0 + 105, 350, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .80, ScrH()  * 0 + 150, 350, 5, Color(255, 25, 25, 200), false, false, true, true)
        draw.SimpleText(RED_DESC, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 130, Color(255,20,25), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    if orange then
        draw.RoundedBox(7.5, ScrW() * .84, ScrH()  * 0 + 50, orange_text+25+25, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .84, ScrH()  * 0 + 95, orange_text+25+25, 5, Color(211, 84, 0), false, false, true, true)
        draw.SimpleText(ORANGE_TXT, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 70, Color(211, 84, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        draw.RoundedBox(7.5, ScrW() * .80, ScrH()  * 0 + 105, 350, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .80, ScrH()  * 0 + 150, 350, 5, Color(211, 84, 0), false, false, true, true)
        draw.SimpleText(ORANGE_DESC, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 130, Color(211, 84, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    if white then
        draw.RoundedBox(7.5, ScrW() * .84, ScrH()  * 0 + 50, white_text+25+25, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .84, ScrH()  * 0 + 95, white_text+25+25, 5, Color(255, 255, 255), false, false, true, true)
        draw.SimpleText(WHITE_TXT, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 70, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        draw.RoundedBox(7.5, ScrW() * .80, ScrH()  * 0 + 105, 350, 50, Color(0, 0, 0, 200))
        draw.RoundedBoxEx(7.5, ScrW() * .80, ScrH()  * 0 + 150, 350, 5, Color(255, 255, 255), false, false, true, true)
        draw.SimpleText(WHITE_DESC, "DefconFontNormal", ScrW() * .89, ScrH() * 0 + 130, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
end)