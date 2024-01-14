
vim.g.mapleader = " " -- Setting the map leader to space

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Opening the command-line window

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move the selected lines down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move the selected lines up

vim.keymap.set("n", "J", "mzJ`z") -- Join the line below to the current line and move the cursor to the end
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll half a screen down and center the cursor line
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll half a screen up and center the cursor line
vim.keymap.set("n", "n", "nzzzv") -- Move to the next search result and center the cursor line
vim.keymap.set("n", "N", "Nzzzv") -- Move to the previous search result and center the cursor line
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Paste over the currently selected text

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Yank to system clipboard in normal or visual mode
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Yank to system clipboard from the current line to the end

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- Delete to black hole register in normal or visual mode

vim.keymap.set("i", "<C-c>", "<Esc>") -- Map Ctrl-c to Escape in insert mode

vim.keymap.set("n", "Q", "<nop>") -- Disable the Ex mode triggered by Shift-q

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- Open tmux sessionizer in a new tmux window

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Format the current buffer using LSP

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Move to the next quickfix item and center the cursor line
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Move to the previous quickfix item and center the cursor line
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Move to the next location list item and center the cursor line
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Move to the previous location list item and center the cursor line

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Smart search and replace with the word under the cursor

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Make the current file executable

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/davor/packer.lua<CR>") -- Open the packer.lua file in the config directory

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>") -- Run the make_it_rain command from the CellularAutomaton plugin

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- Source the current file

vim.keymap.set("v", "<leader>c", "gc") -- Toggle comment for the visually selected lines
vim.keymap.set("n", "<leader>c", "gcc") -- Toggle comment for the current line

