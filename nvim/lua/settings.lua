require("config.options")

local o = vim.i
local wo = vim.wo
local bo = vim.bo

o.wrapfile = true
o.dir = '/tmp'
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.hlsearch = true
o.scrolloff = 12


wo.number = false
wo.wrap = false


bo.expandtab = true
