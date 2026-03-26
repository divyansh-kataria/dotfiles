-- ========================
-- BOOTSTRAP LAZY.NVIM
-- ========================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ========================
-- YOUR EXISTING SETTINGS
-- ========================

-- True Color
vim.opt.termguicolors = true

-- Transparency
local transparent_groups = {
  "Normal",
  "NormalNC",
  "EndOfBuffer",
  "SignColumn",
}
for _, group in ipairs(transparent_groups) do
  vim.cmd("highlight " .. group .. " guibg=NONE")
end

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Mouse
vim.opt.mouse = "a"

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Leader key
vim.g.mapleader = " "

-- ========================
-- PLUGINS
-- ========================
require("lazy").setup({

  -- 🎨 Catppuccin (Mocha)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load first
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

  -- 📁 File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- 🔍 Telescope (search)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

})

-- ========================
-- KEYBINDS (SAFE)
-- ========================

-- Explorer toggle
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end)

-- Split navigation (matches your workflow)
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")


