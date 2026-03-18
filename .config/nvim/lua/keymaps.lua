-- ⚠️ NOT IN KICKSTART.NVIM: This entire file does not exist in kickstart.nvim
-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>q!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
keymap("n", "<leader>a", ":Alpha<CR>", opts)

-- NvimTree
keymap("n", "<leader>op", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope zoxide list<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<space>fe",  ":Telescope file_browser<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Custom
keymap("n", "<leader>p", "<cmd> PasteImg <CR>", opts)
keymap("n", "<leader>e", "$", opts)
keymap("n", "S", "<cmd> %s//g", opts)
keymap("n", "<F5>", "<cmd> UndotreeToggle <CR> <cmd> UndotreeFocus <CR>", opts)
keymap("n", "<C-\\>", "<cmd> TZAtaraxis <CR>", opts)
keymap("n", "<Leader>1", "1gt<CR>", opts)
keymap("n", "<Leader>2", "2gt<CR>", opts)
keymap("n", "<Leader>3", "3gt<CR>", opts)
keymap("n", "<Leader>4", "4gt<CR>", opts)
keymap("n", "<Leader>5", "5gt<CR>", opts)
keymap("n", "<Leader>t", "<cmd> tabnew<CR>", opts)
keymap("n", "<Leader>c", "<cmd> tabclose<CR>", opts)

-- Open image under cursor with feh
keymap("n", "<leader>io", function()
	local file = vim.fn.expand("<cfile>")

	-- If it looks like a relative path, make it absolute from buffer dir
	if file ~= "" and not file:match("^/") then
		local bufdir = vim.fn.expand("%:p:h")
		file = bufdir .. "/" .. file
	end

	if vim.fn.filereadable(file) == 1 then
		vim.fn.jobstart("feh '" .. file .. "'", { detach = true })
	else
		print("File not found: " .. file)
	end
end, { silent = true, desc = "[I]mage [O]pen with feh" })

-- Zellij
keymap("n", "<leader>zv", "<cmd>ZellijNewPaneVSplit<CR>", { silent = true, desc = "[Z]ellij new pane [V]split" })
keymap("n", "<leader>zs", "<cmd>ZellijNewPaneSplit<CR>", { silent = true, desc = "[Z]ellij new pane [V]split" })
keymap("n", "<leader>zt", "<cmd>ZellijNewTab<CR>", { silent = true, desc = "[Z]ellij new pane [V]split" })
