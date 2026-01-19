local map = vim.keymap.set

-- Better mark navigation
map({ "n", "x", "o" }, "gm", function()
  return "`" .. vim.fn.getcharstr()
end, { desc = "Goto mark (exact)", expr = true, silent = true })

map({ "n", "x", "o" }, "gM", function()
  return "'" .. vim.fn.getcharstr()
end, { desc = "Goto mark (line start)", expr = true, silent = true })

-- Delete mark
map({ "n", "x", "o" }, "dm", function()
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
