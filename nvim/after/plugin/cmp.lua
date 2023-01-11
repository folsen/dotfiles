local cmp = require('cmp')
local ELLIPSIS_CHAR = '…'
local MAX_LABEL_WIDTH = 20

cmp.setup({
  formatting = {
    format = function(entry, vim_item)
      local label = vim_item.abbr
      local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
      if truncated_label ~= label then
        vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
      end
    end,
  },
})
