function _G.__open_html(url, closeable)
	local w = vgui.Create("DFrame")
		w:SetTitle("")
		w:SetSize(ScrW() * 0.9, ScrH() * 0.9)
		w:Center()
		w:ShowCloseButton(closeable)
		w:SetDraggable(false)
		w:SetVisible(true)
		w:MakePopup()
	local h = vgui.Create("html", w)
		h:SetSize(w:GetWide() - 4, w:GetTall() - 4 - (!closeable && 0 || 20))
		h:SetPos(2, 22)
		h:OpenURL(url)
end