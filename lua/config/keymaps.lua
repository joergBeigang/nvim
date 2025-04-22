-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local t_oopts = { silent = true }
-- insert mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
-- terminal mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-N>", t_oopts)
local job_id = 0
vim.keymap.set("n", "<space>t", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 10)

    job_id = vim.bo.channel
end)

vim.keymap.set("n", "<space>run", function()
    vim.fn.chansend(job_id, { "source ~/dev/grblmachinist/.venv/bin/activate\r\n" })
    vim.fn.chansend(job_id, { "python ~/dev/grblmachinist/src/main.py\r\n" })
end)
