
local M = {}

function M.open()
    local line = vim.api.nvim_get_current_line()
    local parts = vim.split(line, " ")
    local lib_name = parts[2]
    local path = lib_name:gsub("%.", "/")
    path = path .. ".py"
    vim.cmd.edit(path)
end


return M
