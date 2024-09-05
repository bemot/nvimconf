require "nvchad.mappings"
function _NEXT_BUF()
  require("nvchad.tabufline").next()
end

function _PREV_BUF()
  require("nvchad.tabufline").prev()
end

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "q", "<cmd>q<cr>")
-- for comment string mapp CTRL + /
map("n", "<C-_>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("n", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("v", "<C-_>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("v", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("i", "<C-_>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("i", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>")
map("i", "<C-_>", "<esc><cmd>lua require('Comment.api').toggle.linewise.current()<cr>i")
map("i", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise.current()<cr>i")
map("n", "<C-_>", "<esc><cmd>lua require('Comment.api').toggle.linewise.current()<cr>i")
map("n", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise.current()<cr>i")

-- diplicate line SHIFT + UP/Down
-- Move line ALT + UP/Down
map("n", "<S-Down>", "<cmd>t.<cr>")
map("i", "<S-Down>", "<cmd>t.<cr>")
map("n", "<S-Up>", "<cmd>t -1<cr>")
map("i", "<S-Up>", "<cmd>t -1<cr>")
map("n", "<M-Down>", "<cmd>m+<cr>")
map("i", "<M-Down>", "<cmd>m+<cr>")
map("n", "<M-Up>", "<cmd>m-2<cr>")
map("i", "<M-Up>", "<cmd>m-2<cr>")
map("x", "<S-Down>", ":'<,'>t'><cr>")

-- save insert mode
map("i", "<C-s>", "<esc><cmd>w<cr>i")

-- navigate tabufline left and right
map("n", "<S-h>", "<cmd>lua _PREV_BUF()<cr>")
map("n", "<S-l>", "<cmd>lua _NEXT_BUF()<cr>")

-- load lazygit
map("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Lazygit" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--map = {
-- -- first key is the mode
--  n = {
-- some existing code in here ...
--  },
--  t = {
-- some existing code in here ...
-- },
--  i = {
map("i", "<F4>", "copilot#Next()", { silent = true, expr = true })
map("i", "<F3>", 'copilot#Accept("<ESC>")', { silent = true, expr = true, replace_keycodes = false })
map("i", "<F2>", "copilot#Previous()", { silent = true, expr = true })
--}
--}
--local map1 = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Visual mode mappings from Cyrillic to Latin counterparts based on shared keyboard keys
local mappings = {
  { "й", "q" },
  { "ц", "w" },
  { "у", "e" },
  { "к", "r" },
  { "е", "t" },
  { "н", "y" },
  { "г", "u" },
  { "ш", "i" },
  { "щ", "o" },
  { "з", "p" },
  { "х", "[" },
  { "ї", "]" },
  { "ф", "a" },
  { "і", "s" },
  { "в", "d" },
  { "а", "f" },
  { "п", "g" },
  { "р", "h" },
  { "о", "j" },
  { "л", "k" },
  { "д", "l" },
  { "ж", ";" },
  { "є", "'" },
  { "я", "z" },
  { "ч", "x" },
  { "с", "c" },
  { "м", "v" },
  { "и", "b" },
  { "т", "n" },
  { "ь", "m" },
  { "б", "," },
  { "ю", "." },
  { ".", "/" },
  { ",", "?" },
  { "Й", "Q" },
  { "Ц", "W" },
  { "У", "E" },
  { "К", "R" },
  { "Е", "T" },
  { "Н", "Y" },
  { "Г", "U" },
  { "Ш", "I" },
  { "Щ", "O" },
  { "З", "P" },
  { "Х", "{" },
  { "Ї", "}" },
  { "Ф", "A" },
  { "І", "S" },
  { "В", "D" },
  { "А", "F" },
  { "П", "G" },
  { "Р", "H" },
  { "О", "J" },
  { "Л", "K" },
  { "Д", "L" },
  { "Ж", ":" },
  { "Є", '"' },
  { "Я", "Z" },
  { "Ч", "X" },
  { "С", "C" },
  { "М", "V" },
  { "И", "B" },
  { "Т", "N" },
  { "Ь", "M" },
  { "Б", "<" },
  { "Ю", ">" },
  { "Ж", ":" },
  { "Є", '"' },
  { "Я", "Z" },
  { "Ч", "X" },
  { "С", "C" },
  { "М", "V" },
  { "И", "B" },
  { "Т", "N" },
  { "Ь", "M" },
  { "Б", "<" },
  { "Ю", ">" },
  { "Ж", ":" },
  { "Є", '"' },
  { "Я", "Z" },
  { "Ч", "X" },
  { "С", "C" },
  { "М", "V" },
  { "И", "B" },
  { "Т", "N" },
  { "Ь", "M" },
  { "Б", "<" },
  { "Ю", ">" },
  { "Ж", ":" },
}

-- Visual mode mappings from Cyrillic to Latin counterparts based on shared keyboard keys
for _, map_pair in ipairs(mappings) do
  -- Maps each Cyrillic key to the same command as its Latin counterpart in visual mode
  map("n", map_pair[1], map_pair[2], opts)
end

-- Mapping function for command mode
for _, map_pair in ipairs(mappings) do
  map("c", map_pair[1], map_pair[2], opts)
end
--test
vim.keymap.set("n", "вв", "dd", opts)
