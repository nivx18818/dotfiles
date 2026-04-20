vim.g.mapleader = " "

local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.scrolloff = 10                -- keep 10 lines above/below cursor
opt.sidescrolloff = 10            -- keep 10 columns beside cursor
opt.smartcase = true
opt.timeoutlen = 300              -- shorter key-sequence timeout
opt.updatetime = 200              -- faster cursor-hold and diagnostics
