-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "bearded-arc",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
     --  tabufline = {
     --     lazyload = false
     -- }
  statusline = {
    theme = "default",
    order = {"mode", "file", "git", "%=", "diagnostics", "lsp", "cwd", "cursor", "cursor_percentage"},
    modules = {
      cursor_percentage = function()
        -- return "%#St_pos_sep# %#St_pos_icon#  %l.%c"
        local current_line = vim.api.nvim_win_get_cursor(0)[1] -- Get current line (row) in current window
        local total_lines = vim.api.nvim_buf_line_count(0)    -- Get total number of lines in current buffer

        if total_lines > 0 then
          -- Calculate the percentage
          local percentage = (current_line / total_lines) * 100
          -- Print the result
          local formatterd = string.format("%04.1f", percentage)
          return formatterd .. "%%"
        else
          return ("0.00")
        end
      end
    }
  }
}

return M
