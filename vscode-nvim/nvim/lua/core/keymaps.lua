local map = vim.keymap.set
local vscode = require("vscode")

-- Better up and down
-- Fix folds were automatically opening when navigating with j, k
map("n", "j", function()
  if vim.v.count == 0 then
    vscode.action("cursorDown")
  else
    return "j"
  end
end, { expr = true })

map("n", "k", function()
  if vim.v.count == 0 then
    vscode.action("cursorUp")
  else
    return "k"
  end
end, { expr = true })

-- Better mark navigation
map({ "n", "x", "o" }, "gm", function()
  return "`" .. vim.fn.getcharstr()
end, { desc = "Goto mark (exact)", expr = true, silent = true })

map({ "n", "x", "o" }, "gM", function()
  return "'" .. vim.fn.getcharstr()
end, { desc = "Goto mark (line start)", expr = true, silent = true })

-- Delete mark
map("n", "dm", function()
  local char = vim.fn.getcharstr()
  vim.cmd("delmarks " .. char)
end, { desc = "Delete mark", silent = true })

-- Move Lines
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move Down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move Up" })

-- Clear search highlight on escape
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zv'", { desc = "Next Search Result", expr = true })
map("x", "n", "'Nn'[v:searchforward]", { desc = "Next Search Result", expr = true })
map("o", "n", "'Nn'[v:searchforward]", { desc = "Next Search Result", expr = true })
map("n", "N", "'nN'[v:searchforward].'zv'", { desc = "Prev Search Result", expr = true })
map("x", "N", "'nN'[v:searchforward]", { desc = "Prev Search Result", expr = true })
map("o", "N", "'nN'[v:searchforward]", { desc = "Prev Search Result", expr = true })

-- NORMAL MODE: keep cursor in place after search
map("n", "*", "*N", { silent = true }) -- highlight word under cursor, stay on it
map("n", "#", "#N", { silent = true }) -- same for backwards search

-- VISUAL MODE: search for selection and reselect
map("v", "*", '"vy/<C-r>v<CR>gv', { silent = true }) -- search forward for visual selection, reselect it
map("v", "#", '"vy?<C-r>v<CR>gv', { silent = true }) -- search backward for visual selection, reselect it

-- Go to Definition
map("n", "gr", function() vim.fn.VSCodeNotify("editor.action.goToReferences") end, { silent = true })

-- Yank from first to last non-blank character
map("n", "Y", "^yg_");

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Fold
map("n", "zc", function()
  vscode.action("editor.fold")
end, { desc = "Close fold"})

map("n", "zo", function()
  vscode.action("editor.unfold")
end, { desc = "Open fold"})

map("n", "za", function()
  vscode.action("editor.toggleFold")
end, { desc = "Toggle fold"})

map("n", "zC", function()
  vscode.action("editor.foldRecursively")
end, { desc = "Close recursively"})

map("n", "zO", function()
  vscode.action("editor.unfoldRecursively")
end, { desc = "Open recursively"})

map("n", "zm", function()
  vscode.action("editor.foldAll")
end, { desc = "Close all"})

map("n", "zr", function()
  vscode.action("editor.openAll")
end, { desc = "Open all"})

map("n", "zb", function()
  vscode.action("editor.foldAllBlockComments")
end, { desc = "Close all block comments"})

map("n", "zg", function()
  vscode.action("editor.foldAllMarkerRegions")
end, { desc = "Close all regions"})

map("n", "zG", function()
  vscode.action("editor.unfoldAllMarkerRegions")
end, { desc = "Open all regions"})
