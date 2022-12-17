function ColorSelect(color)
	color = color or "tokyonight-moon"
	vim.cmd.colorscheme(color)
	
end

ColorSelect()
