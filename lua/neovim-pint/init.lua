
local M = {}

local default_options = {
  silent = true,
  exclude_folders = {}
}

local function run_pint_on_save(options)
  if vim.bo.filetype == 'php' then
    local current_path = vim.fn.expand('%:p:h')
    for _, folder in ipairs(options.exclude_folders) do
      if current_path:find(folder) then
        return
      end
    end
    local command = './vendor/bin/pint %'
    if options.silent then
      command = command .. ' > /dev/null 2>&1'
    end
    vim.cmd('!' .. command)
    if not options.silent then
      print('PHP Pint executed!')
    end
  end
end

function M.setup(user_options)
  local options = vim.tbl_extend('force', default_options, user_options or {})
  vim.cmd([[autocmd BufWritePost * lua require('neovim-pint')._run_pint_on_save(require('neovim-pint')._options)]])

  M._run_pint_on_save = run_pint_on_save
  M._options = options
end

return M
