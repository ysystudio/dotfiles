if vim.fn.has "wsl" == 1 or vim.fn.has "win32" == 1 then
    -- Set a compatible clipboard manager
    vim.g.clipboard = {
        copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
        },
    }
end

require("user-keymaps")
require("user-options")
require("user-plugins")
