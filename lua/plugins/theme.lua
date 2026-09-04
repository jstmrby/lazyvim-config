-- Publishes Omarchy's active theme as a lazy.nvim spec, tracking whichever
-- theme `omarchy theme set` last selected.
--
-- Omarchy normally maintains this file itself: `omarchy-nvim-setup` symlinks
-- it to the current theme's `neovim.lua` under
-- ~/.local/state/omarchy/current/theme (Omarchy 4) or
-- ~/.config/omarchy/current/theme (Omarchy 3.x). That setup script assumes
-- `~/.config/nvim` is a plain directory it owns, which isn't true here --
-- nvim is managed from a dotfiles repo, so the symlink is never created and
-- this module never resolves, leaving the theme selector inert and LazyVim on
-- its own default colorscheme.
--
-- Read the same Omarchy state directly instead, so this always reflects the
-- active theme on both cold start and hot reload (omarchy-theme-hotreload.lua
-- clears and re-requires this module on every `LazyReload`). Falls back to a
-- fixed colorscheme -- change FALLBACK_COLORSCHEME below to switch it -- when
-- Omarchy isn't present, e.g. on macOS.
local FALLBACK_COLORSCHEME = "gruvbox"

local function theme_file()
	local candidates = {
		vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua"), -- Omarchy 4
		vim.fn.expand("~/.config/omarchy/current/theme/neovim.lua"), -- Omarchy 3.x
	}
	for _, path in ipairs(candidates) do
		if vim.fn.filereadable(path) == 1 then
			return path
		end
	end
end

local function fallback_spec()
	return {
		{ "LazyVim/LazyVim", opts = { colorscheme = FALLBACK_COLORSCHEME } },
	}
end

local path = theme_file()
if not path then
	return fallback_spec()
end

local ok, spec = pcall(dofile, path)
if not ok or type(spec) ~= "table" then
	return fallback_spec()
end

return spec
