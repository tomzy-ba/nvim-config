
-- [tom neovim config]

vim.g.mapleader = " "
vim.g.localmapleader = " "

vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2




-- disables default file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrw_Plugin = 1

-- layout
vim.opt.wrap = false





-- [Lazy.nvim config]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


-- Plugins

require("lazy").setup("plugins")
