vim.g.mapleader = " "
vim.keymap.set("n", "<leader>z", vim.cmd.Ex)

vim.keymap.set("n", "<C-u>", "u", { silent = true })
vim.keymap.set("i", "<C-u>", "<C-c> u i", { silent = true })

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "J", "V:m '>+1<CR>gv=gv <C-c>")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "K", "V:m '<-2<CR>gv=gv <C-c>")

vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<S-Down>", "V:m '>+1<CR>gv=gv <C-c>")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<S-Up>", "V:m '<-2<CR>gv=gv <C-c>")

vim.keymap.set("v", "m", 'y/<C-R>"<CR>')
vim.keymap.set("n", "cm", 'cgn')

--vim.keymap.set("n", "<C-c>k", "<cmd>:split<CR>") there is (ctrl + w) +v
--vim.keymap.set("n", "<C-c>l", "<cmd>:vsplit<CR>")there is (ctrl + w) +s

vim.keymap.set("v", "<C-y>", '"*y')
vim.keymap.set("n", "<C-y>", '"*yy')

vim.keymap.set("n", "<C-s>", "<C-w>T")
vim.keymap.set("n", "<C-c>c", function()
	vim.cmd(":vsplit")
	vim.lsp.buf.definition()
	vim.api.nvim_command('wincmd T')
end)

vim.keymap.set("n", "<C-p>", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("", path)
end)



--local id = vim.api.nvim_create_augroup("startup", {
--  clear = false
--})

--local persistbuffer = function(bufnr)
--  bufnr = bufnr or vim.api.nvim_get_current_buf()
--  vim.fn.setbufvar(bufnr, 'bufpersist', 1)
--end
--
--vim.api.nvim_create_autocmd({"BufRead"}, {
--  group = id,
--  pattern = {"*"},
--  callback = function()
--    vim.api.nvim_create_autocmd({"InsertEnter","BufModifiedSet"}, {
--      buffer = 0,
--      once = true,
--      callback = function()
--        persistbuffer()
--      end
--    })
--  end
--})
--
--vim.keymap.set('n', '<C-c>',
--  function()
--    local curbufnr = vim.api.nvim_get_current_buf()
--    local buflist = vim.api.nvim_list_bufs()
--    for _, bufnr in ipairs(buflist) do
--      if vim.bo[bufnr].buflisted and bufnr ~= curbufnr and (vim.fn.getbufvar(bufnr, 'bufpersist') ~= 1) then
--        vim.cmd('bd ' .. tostring(bufnr))
--      end
--    end
--  end, { silent = true, desc = 'Close unused buffers' })
